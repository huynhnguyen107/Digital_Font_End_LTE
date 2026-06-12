Project: LTE20 DUC + CFR + GMP-DPD on KR260

Input:
- 15360 complex Q1.15 samples
- 30.72 Msps
- AXI DMA MM2S

Processing:
1. DUC x4
   - Halfband FIR interpolation
   - Output 122.88 Msps

2. CFR
   - Magnitude clipping
   - Threshold = 0x4CCC
   - Phase-preserving scale

3. GMP-DPD
   - Fixed-coefficient generalized memory polynomial
   - Main branch: p = 1, 3, 5; memory m = 0..3
   - Cross branch: p = 3, 5; memory m = 0..2; lag l = 1..2
   - 24 complex terms
   - Coefficients Q2.14
   - Data Q1.15

Output:
- 61440 complex Q1.15 samples
- 122.88 Msps
- AXI DMA S2MM

Validation:
- MATLAB golden generated bit-exact reference
- KR260 hardware output matched golden
- DMA status MM2S/S2MM = 0x1002