clear; clc;

%% ============================================================
% LTE20 Uplink DDC Golden Generator
%
% Input:
%   lte20_duc_golden_q15.txt
%   Complex baseband IQ @ 122.88 Msps
%
% Generated RTL input:
%   lte20_ul_if_q15.txt/bin/h
%   Fake uplink IF signal @ Fs/4
%
% Golden output:
%   lte20_ul_ddc_golden_q15.txt/bin/h
%   After mixer down + HB decim2 + HB decim2
%
% Format:
%   32-bit word = {Q[15:0], I[15:0]}
%% ============================================================

%% Files
IN_TXT = 'lte20_duc_golden_q15.txt';     % baseband complex @ 122.88 MHz

IF_TXT = 'lte20_ul_if_q15.txt';          % input to RTL DDC
IF_BIN = 'lte20_ul_if_q15.bin';
IF_H   = 'lte20_ul_if_q15.h';

OUT_TXT = 'lte20_ul_mixer_ddc_golden_q15.txt';
OUT_BIN = 'lte20_ul_mixer_ddc_golden_q15.bin';
OUT_H   = 'lte20_ul_mixer_ddc_golden_q15.h';

%% Sample rates
Fs_in  = 122.88e6;
Fs_out = 30.72e6;

%% Mixer phase
% Fs/4 mixer:
% phase 0,1,2,3 = 1, j, -1, -j for up-mix
% phase 0,1,2,3 = 1, -j, -1, j for down-mix
MIXER_PHASE0 = 0;

%% Decimation phase
% phase = 0 keeps zero-based indices 0,2,4,...
% phase = 1 keeps zero-based indices 1,3,5,...
%
% Use phase=1 for both stages so last input sample is preserved
% when input length is divisible by 4.
DECIM1_PHASE = 1;
DECIM2_PHASE = 1;

%% ============================================================
% Read input baseband LTE slot @ 122.88 MHz
%% ============================================================

fid = fopen(IN_TXT, 'r');
if fid < 0
    error('Cannot open input file: %s', IN_TXT);
end

C = textscan(fid, '%s');
fclose(fid);

lines = C{1};
lines = lines(~cellfun('isempty', lines));

words_bb = uint32(hex2dec(lines));

if length(words_bb) ~= 61440
    error('Input must be 61440 samples, but got %d', length(words_bb));
end

%% Unpack {Q[15:0], I[15:0]}
[i_bb, q_bb] = unpack_qi(words_bb);

%% ============================================================
% Step 1: Create fake uplink IF input @ Fs/4
% This generated IF file is the input for RTL DDC.
%% ============================================================

[i_if, q_if] = mixer_fs4_up_q15(i_bb, q_bb, MIXER_PHASE0);
words_if = pack_qi(q_if, i_if);

if length(words_if) ~= 61440
    error('IF output must be 61440 samples, but got %d', length(words_if));
end

%% Write IF input files
write_txt(IF_TXT, words_if);
write_bin(IF_BIN, words_if);
write_header(IF_H, 'lte20_ul_if_q15', words_if, ...
             'LTE20_UL_IF_SAMPLES', 'LTE20_UL_IF_BYTES');

%% ============================================================
% Step 2: Uplink DDC
%
% RTL target:
%   IF complex input @ 122.88
%        |
%        v
%   mixer_fs4_down
%        |
%        v
%   HB7 FIR + decim2
%        |
%        v
%   HB7 FIR + decim2
%        |
%        v
%   baseband output @ 30.72
%% ============================================================

%% Down-mixer Fs/4
[i_mix, q_mix] = mixer_fs4_down_q15(i_if, q_if, MIXER_PHASE0);

%% Stage 1: 122.88 -> 61.44 MHz
[i_fir1, q_fir1] = hb7_fir_q15(i_mix, q_mix);
[i_dec1, q_dec1] = decimate2_q15(i_fir1, q_fir1, DECIM1_PHASE);

%% Stage 2: 61.44 -> 30.72 MHz
[i_fir2, q_fir2] = hb7_fir_q15(i_dec1, q_dec1);
[i_out, q_out]   = decimate2_q15(i_fir2, q_fir2, DECIM2_PHASE);

%% Pack output
words_out = pack_qi(q_out, i_out);

fprintf('Baseband input samples : %d\n', length(words_bb));
fprintf('UL IF samples          : %d\n', length(words_if));
fprintf('DDC output samples     : %d\n', length(words_out));
fprintf('DDC output bytes       : %d\n', length(words_out) * 4);

if length(words_out) ~= 15360
    error('DDC output must be 15360 samples, but got %d', length(words_out));
end

%% Write DDC golden output files
write_txt(OUT_TXT, words_out);
write_bin(OUT_BIN, words_out);
write_header(OUT_H, 'lte20_ul_mixer_ddc_golden_q15', words_out, ...
             'LTE20_UL_MIXER_DDC_OUT_SAMPLES', 'LTE20_UL_MIXER_DDC_OUT_BYTES');

%% ============================================================
% Plot
%% ============================================================

x_bb  = double(i_bb)  / 32768 + 1j * double(q_bb)  / 32768;
x_if  = double(i_if)  / 32768 + 1j * double(q_if)  / 32768;
x_mix = double(i_mix) / 32768 + 1j * double(q_mix) / 32768;
x_out = double(i_out) / 32768 + 1j * double(q_out) / 32768;

figure;
pspectrum(x_bb, Fs_in, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('Original Complex Baseband @ 122.88 Msps');

figure;
pspectrum(x_if, Fs_in, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('Fake UL IF after Fs/4 Up-Mixer @ 122.88 Msps');

figure;
pspectrum(x_mix, Fs_in, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('After Fs/4 Down-Mixer @ 122.88 Msps');

figure;
pspectrum(x_out, Fs_out, ...
    'FrequencyLimits', [-15.36e6 15.36e6]);
title('After Uplink DDC x4 @ 30.72 Msps');

%% Print first output words
fprintf('\nFirst 16 UL IF input words:\n');
for k = 1:16
    fprintf('%04d: 0x%s\n', k-1, upper(dec2hex(words_if(k), 8)));
end

fprintf('\nFirst 16 DDC golden output words:\n');
for k = 1:16
    fprintf('%04d: 0x%s\n', k-1, upper(dec2hex(words_out(k), 8)));
end

fprintf('\nGenerated files:\n');
fprintf('  %s\n', IF_TXT);
fprintf('  %s\n', IF_BIN);
fprintf('  %s\n', IF_H);
fprintf('  %s\n', OUT_TXT);
fprintf('  %s\n', OUT_BIN);
fprintf('  %s\n', OUT_H);


%% ========================================================================
%% Local functions
%% ========================================================================

function [i_i16, q_i16] = unpack_qi(words)
    i_u16 = uint16(bitand(words, uint32(65535)));
    q_u16 = uint16(bitshift(words, -16));

    i_i16 = u16_to_i16(i_u16);
    q_i16 = u16_to_i16(q_u16);
end

function y = u16_to_i16(u)
    d = double(u);
    d(d >= 32768) = d(d >= 32768) - 65536;
    y = int16(d);
end

function words = pack_qi(q_i16, i_i16)
    q_u16 = uint16(mod(int32(q_i16), 65536));
    i_u16 = uint16(mod(int32(i_i16), 65536));

    words = bitor(bitshift(uint32(q_u16), 16), uint32(i_u16));
end

function [i_out, q_out] = mixer_fs4_up_q15(i_in, q_in, phase0)
    % Up-conversion:
    %   y[n] = x[n] * exp(+j*pi/2*n)
    %
    % phase:
    %   0:  x *  1  -> I' =  I, Q' =  Q
    %   1:  x *  j  -> I' = -Q, Q' =  I
    %   2:  x * -1  -> I' = -I, Q' = -Q
    %   3:  x * -j  -> I' =  Q, Q' = -I

    N = length(i_in);

    i_out = zeros(N, 1, 'int16');
    q_out = zeros(N, 1, 'int16');

    for n = 1:N
        ph = mod((n-1) + phase0, 4);

        I = int16(i_in(n));
        Q = int16(q_in(n));

        switch ph
            case 0
                i_out(n) = I;
                q_out(n) = Q;

            case 1
                i_out(n) = sat16(-double(Q));
                q_out(n) = I;

            case 2
                i_out(n) = sat16(-double(I));
                q_out(n) = sat16(-double(Q));

            case 3
                i_out(n) = Q;
                q_out(n) = sat16(-double(I));
        end
    end
end

function [i_out, q_out] = mixer_fs4_down_q15(i_in, q_in, phase0)
    % Down-conversion:
    %   y[n] = x[n] * exp(-j*pi/2*n)
    %
    % phase:
    %   0:  x *  1  -> I' =  I, Q' =  Q
    %   1:  x * -j  -> I' =  Q, Q' = -I
    %   2:  x * -1  -> I' = -I, Q' = -Q
    %   3:  x *  j  -> I' = -Q, Q' =  I

    N = length(i_in);

    i_out = zeros(N, 1, 'int16');
    q_out = zeros(N, 1, 'int16');

    for n = 1:N
        ph = mod((n-1) + phase0, 4);

        I = int16(i_in(n));
        Q = int16(q_in(n));

        switch ph
            case 0
                i_out(n) = I;
                q_out(n) = Q;

            case 1
                i_out(n) = Q;
                q_out(n) = sat16(-double(I));

            case 2
                i_out(n) = sat16(-double(I));
                q_out(n) = sat16(-double(Q));

            case 3
                i_out(n) = sat16(-double(Q));
                q_out(n) = I;
        end
    end
end

function [i_out, q_out] = hb7_fir_q15(i_in, q_in)
    % Halfband FIR:
    %
    %   h = [-1 0 9 16 9 0 -1] / 16
    %
    % Causal streaming:
    %
    %   y[n] = (-x[n] + 9*x[n-2] + 16*x[n-3] + 9*x[n-4] - x[n-6]) / 16
    %
    % No tail flush.

    N = length(i_in);

    i_out = zeros(N, 1, 'int16');
    q_out = zeros(N, 1, 'int16');

    i_d1 = 0; i_d2 = 0; i_d3 = 0; i_d4 = 0; i_d5 = 0; i_d6 = 0;
    q_d1 = 0; q_d2 = 0; q_d3 = 0; q_d4 = 0; q_d5 = 0; q_d6 = 0;

    for n = 1:N
        i_x0 = double(i_in(n));
        q_x0 = double(q_in(n));

        i_acc = -i_x0 + 9*i_d2 + 16*i_d3 + 9*i_d4 - i_d6;
        q_acc = -q_x0 + 9*q_d2 + 16*q_d3 + 9*q_d4 - q_d6;

        % Use floor to match RTL arithmetic right shift for signed values.
        i_out(n) = sat16(floor(i_acc / 16));
        q_out(n) = sat16(floor(q_acc / 16));

        i_d6 = i_d5;
        i_d5 = i_d4;
        i_d4 = i_d3;
        i_d3 = i_d2;
        i_d2 = i_d1;
        i_d1 = i_x0;

        q_d6 = q_d5;
        q_d5 = q_d4;
        q_d4 = q_d3;
        q_d3 = q_d2;
        q_d2 = q_d1;
        q_d1 = q_x0;
    end
end

function [i_out, q_out] = decimate2_q15(i_in, q_in, phase)
    % phase = 0 keeps zero-based indices 0,2,4,...
    % phase = 1 keeps zero-based indices 1,3,5,...

    if phase == 0
        idx = 1:2:length(i_in);
    else
        idx = 2:2:length(i_in);
    end

    i_out = i_in(idx);
    q_out = q_in(idx);
end

function y = sat16(x)
    if x > 32767
        x = 32767;
    elseif x < -32768
        x = -32768;
    end

    y = int16(x);
end

function write_txt(filename, words)
    fid = fopen(filename, 'w');
    if fid < 0
        error('Cannot open output txt file: %s', filename);
    end

    for k = 1:length(words)
        fprintf(fid, '%s\n', upper(dec2hex(words(k), 8)));
    end

    fclose(fid);
end

function write_bin(filename, words)
    fid = fopen(filename, 'w');
    if fid < 0
        error('Cannot open output bin file: %s', filename);
    end

    fwrite(fid, words, 'uint32', 0, 'ieee-le');
    fclose(fid);
end

function write_header(filename, array_name, words, samples_macro, bytes_macro)
    fid = fopen(filename, 'w');
    if fid < 0
        error('Cannot open output header file: %s', filename);
    end

    guard = upper([array_name '_H']);

    fprintf(fid, '#ifndef %s\n', guard);
    fprintf(fid, '#define %s\n\n', guard);
    fprintf(fid, '#include <stdint.h>\n\n');

    fprintf(fid, '#define %s %d\n', samples_macro, length(words));
    fprintf(fid, '#define %s   (%s * 4)\n\n', bytes_macro, samples_macro);

    fprintf(fid, 'static const uint32_t %s[%s] = {\n', array_name, samples_macro);

    for k = 1:length(words)
        if mod(k-1, 4) == 0
            fprintf(fid, '    ');
        end

        fprintf(fid, '0x%s', upper(dec2hex(words(k), 8)));

        if k ~= length(words)
            fprintf(fid, ', ');
        end

        if mod(k, 4) == 0
            fprintf(fid, '\n');
        end
    end

    if mod(length(words), 4) ~= 0
        fprintf(fid, '\n');
    end

    fprintf(fid, '};\n\n');
    fprintf(fid, '#endif\n');

    fclose(fid);
end