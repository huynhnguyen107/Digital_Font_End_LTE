Input  : 61440 complex Q1.15 samples @ 122.88 Msps
Output : 15360 complex Q1.15 samples @ 30.72 Msps
Chain  : Fs/4 mixer -> HB7 decim2 -> HB7 decim2
Format : {Q[15:0], I[15:0]}
Validation: KR260 hardware output matched MATLAB golden exactly
DMA status: MM2S/S2MM = 0x1002