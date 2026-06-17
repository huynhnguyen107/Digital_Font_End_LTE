This project implements and validates the first block of an LTE20 uplink receiver chain on the AMD/Xilinx KR260 platform.

The block under test is a complex Fs/4 digital down-mixer. It receives complex IF-like IQ samples at 122.88 Msps through AXI DMA MM2S, applies a multiplier-free Fs/4 down-conversion, and streams the result to AXI DMA S2MM.

The hardware output is compared against MATLAB-generated golden data through a Linux userspace test application using `/dev/mem`.

## Processing Chain

```text
BRAM input
    |
    v
AXI DMA MM2S
    |
    v
AXI4-Stream input
    |
    v
Fs/4 complex down-mixer
    |
    v
AXI4-Stream output
    |
    v
AXI DMA S2MM
    |
    v
BRAM output