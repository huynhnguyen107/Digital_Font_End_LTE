clear; clc;

%% Files
IN_TXT  = 'lte20_duc_golden_q15.txt';     % input @ 122.88 MHz

OUT_TXT = 'lte20_ddc_golden_q15.txt';
OUT_BIN = 'lte20_ddc_golden_q15.bin';
OUT_H   = 'lte20_ddc_golden_q15.h';

%% Sample rates
Fs_in  = 122.88e6;
Fs_out = 30.72e6;

%% Decimation phase
% phase = 0: keep input index 0,2,4,...
% phase = 1: keep input index 1,3,5,...
%
% Use phase=1 for both stages so TLAST/sample cu?i is preserved
% when input length is divisible by 4.
DECIM1_PHASE = 1;
DECIM2_PHASE = 1;

%% Read input slot @ 122.88 MHz
fid = fopen(IN_TXT, 'r');
if fid < 0
    error('Cannot open input file: %s', IN_TXT);
end

C = textscan(fid, '%s');
fclose(fid);

lines = C{1};
lines = lines(~cellfun('isempty', lines));

words_in = uint32(hex2dec(lines));

if length(words_in) ~= 61440
    error('Input must be 61440 samples, but got %d', length(words_in));
end

%% Unpack {Q[15:0], I[15:0]}
[i_in, q_in] = unpack_qi(words_in);

%% DDC decimation x4
% Stage 1: 122.88 -> 61.44 MHz
[i_fir1, q_fir1] = hb7_fir_q15(i_in, q_in);
[i_dec1, q_dec1] = decimate2_q15(i_fir1, q_fir1, DECIM1_PHASE);

% Stage 2: 61.44 -> 30.72 MHz
[i_fir2, q_fir2] = hb7_fir_q15(i_dec1, q_dec1);
[i_out, q_out]   = decimate2_q15(i_fir2, q_fir2, DECIM2_PHASE);

%% Pack output
words_out = pack_qi(q_out, i_out);

fprintf('Input samples  : %d\n', length(words_in));
fprintf('Output samples : %d\n', length(words_out));
fprintf('Output bytes   : %d\n', length(words_out) * 4);

if length(words_out) ~= 15360
    error('Output must be 15360 samples, but got %d', length(words_out));
end

%% Write TXT
fid = fopen(OUT_TXT, 'w');
for k = 1:length(words_out)
    fprintf(fid, '%s\n', upper(dec2hex(words_out(k), 8)));
end
fclose(fid);

%% Write BIN
fid = fopen(OUT_BIN, 'w');
fwrite(fid, words_out, 'uint32', 0, 'ieee-le');
fclose(fid);

%% Write C header
write_header(OUT_H, 'lte20_ddc_golden_q15', words_out);

%% Plot
x_in  = double(i_in)  / 32768 + 1j * double(q_in)  / 32768;
x_out = double(i_out) / 32768 + 1j * double(q_out) / 32768;

figure;
pspectrum(x_in, Fs_in, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('Input LTE Slot @ 122.88 Msps');

figure;
pspectrum(x_out, Fs_out, ...
    'FrequencyLimits', [-15.36e6 15.36e6]);
title('After DDC x4 @ 30.72 Msps');

fprintf('\nFirst 16 DDC output words:\n');
for k = 1:16
    fprintf('%04d: 0x%s\n', k-1, upper(dec2hex(words_out(k), 8)));
end


%% ------------------------------------------------------------------------
%% Local functions
%% ------------------------------------------------------------------------

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

function [i_out, q_out] = hb7_fir_q15(i_in, q_in)
    N = length(i_in);

    i_out = zeros(N, 1, 'int16');
    q_out = zeros(N, 1, 'int16');

    i_d1 = 0; i_d2 = 0; i_d3 = 0; i_d4 = 0; i_d5 = 0; i_d6 = 0;
    q_d1 = 0; q_d2 = 0; q_d3 = 0; q_d4 = 0; q_d5 = 0; q_d6 = 0;

    for n = 1:N
        i_x0 = double(i_in(n));
        q_x0 = double(q_in(n));

        % h = [-1 0 9 16 9 0 -1] / 16
        i_acc = -i_x0 + 9*i_d2 + 16*i_d3 + 9*i_d4 - i_d6;
        q_acc = -q_x0 + 9*q_d2 + 16*q_d3 + 9*q_d4 - q_d6;

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

function words = pack_qi(q_i16, i_i16)
    q_u16 = uint16(mod(int32(q_i16), 65536));
    i_u16 = uint16(mod(int32(i_i16), 65536));

    words = bitor(bitshift(uint32(q_u16), 16), uint32(i_u16));
end

function write_header(filename, array_name, words)
    fid = fopen(filename, 'w');

    guard = upper([array_name '_H']);

    fprintf(fid, '#ifndef %s\n', guard);
    fprintf(fid, '#define %s\n\n', guard);
    fprintf(fid, '#include <stdint.h>\n\n');

    fprintf(fid, '#define LTE20_DDC_OUT_SAMPLES %d\n', length(words));
    fprintf(fid, '#define LTE20_DDC_OUT_BYTES   (LTE20_DDC_OUT_SAMPLES * 4)\n\n');

    fprintf(fid, 'static const uint32_t %s[LTE20_DDC_OUT_SAMPLES] = {\n', array_name);

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