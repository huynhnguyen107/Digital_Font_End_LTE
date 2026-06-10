#include <stdio.h>//printf, perror
#include <stdint.h>//uint32_t
#include <stdlib.h>//exit
#include <fcntl.h>// open , O_RDWR, O_SYNC
#include <unistd.h>//usleep, close
#include <sys/mman.h>//mmap, munmap, PROT_READ, PROT_WRITE, MAP_SHARED

#include "lte20_slot_q15.h"// for the input data slot 0xF000 bytes
#include "lte20_duc_cfr_gmpdpd_golden_q15.h"// for the golden output data slot


#define BRAM_MAP_SIZE 0x00080000 // 512KB
#define BRAM_BASE_PHYS  0xA0000000
#define DMA_BASE_PHYS  0xA0080000
#define DMA_MAP_SIZE  0x00010000 // 64KB
//define address offsets for the input and output data in BRAM
#define INPUT_OFFSET 0x00000 // Offset for input data in BRAM
#define OUTPUT_OFFSET 0x10000// Offset for output data in BRAM
//define real adderess for DMA source and destination
#define DMA_SRC_ADDR  (BRAM_BASE_PHYS + INPUT_OFFSET) // DMA source address for input data
#define DMA_DST_ADDR  (BRAM_BASE_PHYS + OUTPUT_OFFSET) // DMA destination address for output data
//define DMA control register offsets for MM2S and S2MM channels
// MM2S channel register offsets
#define DMA_MM2S_CTRL_OFFSET 0x0000 // MM2S control register offset
#define DMA_MM2S_STATUS_OFFSET 0x0004 // MM2S status register offset
#define DMA_MM2S_SRC_ADDR_OFFSET 0x0018 // MM2S source address register offset
#define DMA_MM2S_LENGTH_OFFSET 0x0028 // MM2S transfer length register
//S2MM channel register offsets
#define DMA_S2MM_CTRL_OFFSET 0x0030 // S2MM control register offset 
#define DMA_S2MM_STATUS_OFFSET 0x0034 // S2MM status register offset
#define DMA_S2MM_DST_ADDR_OFFSET 0x0048 // S2MM destination address register offset
#define DMA_S2MM_LENGTH_OFFSET 0x0058 // S2MM transfer length register
// Define control bits for DMA operations
#define DMA_CTRL_START 0x1 // Control bit to start DMA transfer
#define DMA_CTRL_RESET 0x4 // Control bit to reset DMA engine
#define DMA_STATUS_HALTED 0x1 // Status bit indicating DMA engine is halted
#define DMA_STATUS_IDLE 0x2 // Status bit indicating DMA engine is idle
#define DMA_STATUS_INTERRUPT_ON_COMPLETE 0x1000 // Status bit indicating interrupt on completion
#define DMA_STATUS_INTERUPT_ON_ERROR 0x4000 // Status bit indicating interrupt on error
#define DMA_STATUS_DELAYED 0x2000 // Status bit indicating delayed transfer
#define DMA_STATUS_ERROR 0x4070 // Status bit indicating error condition
//read and write macros for DMA registers
#define DMA_REG(base, offset) (*((volatile uint32_t  *)((uint8_t *)(base) + (offset))))
//reset DMA engine
static void dma_reset(volatile uint32_t  *dma_base) {
    // Reset MM2S channel
    DMA_REG(dma_base, DMA_MM2S_CTRL_OFFSET) = DMA_CTRL_RESET;
    printf("Resetting MM2S channel...\n");
    // Reset S2MM channel
    DMA_REG(dma_base, DMA_S2MM_CTRL_OFFSET) = DMA_CTRL_RESET;
    printf("Resetting S2MM channel...\n");
    //read status registers to clear reset state
    uint32_t mm2s_status = DMA_REG(dma_base, DMA_MM2S_STATUS_OFFSET);
    uint32_t s2mm_status = DMA_REG(dma_base, DMA_S2MM_STATUS_OFFSET);
    printf("MM2S Status after reset command: %08x\n", mm2s_status);
    printf("S2MM Status after reset command: %08x\n", s2mm_status);
    // Wait for reset to complete
    while ((DMA_REG(dma_base, DMA_MM2S_CTRL_OFFSET) & DMA_CTRL_RESET));
    while ((DMA_REG(dma_base, DMA_S2MM_CTRL_OFFSET) & DMA_CTRL_RESET));
    // Clear any pending interrupts or errors
    DMA_REG(dma_base, DMA_MM2S_STATUS_OFFSET) = DMA_STATUS_INTERRUPT_ON_COMPLETE | DMA_STATUS_INTERUPT_ON_ERROR | DMA_STATUS_DELAYED;
    DMA_REG(dma_base, DMA_S2MM_STATUS_OFFSET) = DMA_STATUS_INTERRUPT_ON_COMPLETE | DMA_STATUS_INTERUPT_ON_ERROR | DMA_STATUS_DELAYED;

}
//function dma_wait_for_completion to wait for DMA transfer to complete
static int dma_wait_for_completion(volatile uint32_t  *dma_base, uint32_t status_offset, const char *channel_name) {
    uint32_t  status;
    int timeout = 100000000; // Timeout counter
    while (timeout > 0) {
        status = DMA_REG(dma_base, status_offset);
        if (status & DMA_STATUS_ERROR) {
            printf("DMA %s channel error: %08x\n", channel_name, status);
            return -1; // Indicate error
        }
        if (status & DMA_STATUS_IDLE|| status & DMA_STATUS_INTERRUPT_ON_COMPLETE) {
            printf("DMA %s channel transfer completed successfully: %08x\n", channel_name, status);
            return 0; // Indicate success
        }
        timeout--;
    }
    status = DMA_REG(dma_base, status_offset);
    printf("DMA %s channel transfer timed out: %08x\n", channel_name, status);
    printf("Debug DMA registers:\n");
    printf("MM2S CTRL   = %08x\n", DMA_REG(dma_base, DMA_MM2S_CTRL_OFFSET));
    printf("MM2S STATUS = %08x\n", DMA_REG(dma_base, DMA_MM2S_STATUS_OFFSET));
    printf("S2MM CTRL   = %08x\n", DMA_REG(dma_base, DMA_S2MM_CTRL_OFFSET));
    printf("S2MM STATUS = %08x\n", DMA_REG(dma_base, DMA_S2MM_STATUS_OFFSET));
    return -1; // Indicate timeout error
}

int main(void) {
    //printers
    // setbuf(stdout, NULL); // Disable buffering for stdout to ensure timely output
    int fd;
    // Open /dev/mem to access physical memory
    volatile uint32_t  *bram;
    volatile uint32_t  *dma; 
    //check HEADER file constants for expected values and print them
    printf("LTE20 DUC Test Application Started\n");
    printf("Input samples: %d\n", LTE20_SLOT_SAMPLES);
    printf("Input bytes    : %d\n", LTE20_SLOT_BYTES);
    printf("Output samples : %d\n", LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_SAMPLES);
    printf("Output bytes   : %d\n", LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_BYTES); 
    if (LTE20_SLOT_SAMPLES !=15360) {
        printf("Error: Unexpected number of input samples. Expected 15360, got %d\n", LTE20_SLOT_SAMPLES);
        return -1;
    }
    if (LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_SAMPLES != 61440) {
        printf("Error: Unexpected number of output samples. Expected 61440, got %d\n", LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_SAMPLES);
        return -1;
    }
    if(OUTPUT_OFFSET+LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_BYTES > BRAM_MAP_SIZE) {
        printf("Error: Output data exceeds BRAM map size. Output end address: 0x%X, BRAM map size: 0x%X\n", OUTPUT_OFFSET + LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_BYTES, BRAM_MAP_SIZE);
        return -1;
    }
    //open /dev/mem to access physical memory
    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Failed to open /dev/mem");
        return -1;
    }
    //Map BRAM and DMA control registers into user space
    bram = (volatile uint32_t  *)mmap(NULL, BRAM_MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, BRAM_BASE_PHYS);//i=0 for word addressing
    if (bram == MAP_FAILED) {
        perror("Failed to map BRAM");
        close(fd);
        return -1;
    }
    // Map DMA control registers
    dma = (volatile uint32_t  *)mmap(NULL, DMA_MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, DMA_BASE_PHYS);
    if (dma == MAP_FAILED) {
        perror("Failed to map DMA control registers");
        munmap((void *)bram, BRAM_MAP_SIZE);
        close(fd);
        return -1;
    }
    //pointer to input and output data locations in BRAM
    volatile uint32_t  *input_bram = (volatile uint32_t  *)((uint8_t *)bram + INPUT_OFFSET);//input_bram[i]=bram[INPUT_OFFSET/4+i] for word addressing
    volatile uint32_t  *output_bram = (volatile uint32_t  *)((uint8_t *)bram + OUTPUT_OFFSET);//output_bram[i]=bram[OUTPUT_OFFSET/4+i] for word addressing
    //write input data to BRAM
    printf("Writing input data to BRAM...\n");
    for (size_t i = 0; i < LTE20_SLOT_SAMPLES; i++) {
        input_bram[i] = lte20_slot_q15[i];
    }
    //clear output area in BRAM
    for (size_t i = 0; i < LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_SAMPLES; i++) {
        output_bram[i] = 0xDEADBEEF; // Clear output area with known pattern
    }
    //reset DMA engine
    printf("Resetting DMA engine...\n");
    dma_reset(dma);
    printf("Status after DMA reset:\n");
    printf("MM2S Status: %08x\n", DMA_REG(dma, DMA_MM2S_STATUS_OFFSET));
    printf("S2MM Status: %08x\n", DMA_REG(dma, DMA_S2MM_STATUS_OFFSET));
    //start S2MM transfer to receive processed data from BRAM to host memory
    printf("Starting S2MM DMA transfer...\n");
    DMA_REG(dma, DMA_S2MM_CTRL_OFFSET) = DMA_CTRL_START; // Start S2MM channel
    DMA_REG(dma, DMA_S2MM_DST_ADDR_OFFSET) = DMA_DST_ADDR; // Set S2MM destination address
    DMA_REG(dma, DMA_S2MM_LENGTH_OFFSET) = LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_BYTES; // Set S2MM transfer length
    //start MM2S transfer to send input data from BRAM to the DUC
    printf("Starting MM2S DMA transfer...\n");
    DMA_REG(dma, DMA_MM2S_CTRL_OFFSET) = DMA_CTRL_START; // Start MM2S channel
    DMA_REG(dma, DMA_MM2S_SRC_ADDR_OFFSET) = DMA_SRC_ADDR; // Set MM2S source address
    DMA_REG(dma, DMA_MM2S_LENGTH_OFFSET) = LTE20_SLOT_BYTES; // Set MM2S transfer length
    if (dma_wait_for_completion(dma, DMA_MM2S_STATUS_OFFSET, "MM2S") != 0) {
       goto cleanup; // Handle MM2S transfer error
    }
    if (dma_wait_for_completion(dma, DMA_S2MM_STATUS_OFFSET, "S2MM") != 0) {
        goto cleanup; // Handle S2MM transfer error
    }
    //print final status of DMA channels
    printf("Final DMA Status:\n");
    printf("MM2S Status: %08x\n", DMA_REG(dma, DMA_MM2S_STATUS_OFFSET));
    printf("S2MM Status: %08x\n", DMA_REG(dma, DMA_S2MM_STATUS_OFFSET));
    //print 16 first output samples in hex
    printf("First 16 output samples:\n");   
    for (size_t i = 0; i < 16; i++) {
        printf("Output sample %zu: %08x\n", i, output_bram[i]);
    }
    //compare output data with golden data
    printf("Comparing output data with golden data...\n");
    int errors = 0;
    for (size_t i = 0; i < LTE20_DUC_CFR_GMPDPD_GOLDEN_Q15_SAMPLES; i++) {
        uint32_t output_sample = output_bram[i];
        uint32_t golden_sample = lte20_duc_cfr_gmpdpd_golden_q15[i];
        if (output_sample != golden_sample) {
            if (errors < 10) { // Limit the number of error messages printed
                printf("Mismatch at sample %zu: output 0x%08x, expected 0x%08x\n", i, output_sample, golden_sample);
            }
            errors++;
        }
    }
    if (errors == 0) {
        printf("All output samples match the golden data. Test PASSED.\n");
    } 
    else {
        printf("Total mismatches: %d. Test FAILED.\n", errors);
    }
cleanup:
    // Unmap memory and close file descriptor
    munmap((void *)bram, BRAM_MAP_SIZE);
    munmap((void *)dma, DMA_MAP_SIZE);
    close(fd);
    return 0; 
    
    
}