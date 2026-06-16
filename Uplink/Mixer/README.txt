AXI-DMA-based LTE 20 MHz uplink DDC accelerator on KR260.
The design performs 4× decimation using two cascaded 7-tap halfband FIR and downsampling stages.
The full LTE slot with 61440 IQ samples at 122.88 Msps was transferred through AXI DMA and verified against MATLAB golden output with bit-exact matching.