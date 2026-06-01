clear; clc;

%% Files
IN_TXT  = 'lte20_slot_q15.txt';

OUT_TXT = 'lte20_duc_golden_q15.txt';
OUT_BIN = 'lte20_duc_golden_q15.bin';
OUT_H   = 'lte20_duc_golden_q15.h';

%% Sample rates
Fs_in  = 30.72e6;
Fs_out = 122.88e6;

%% Read input LTE slot
fid = fopen(IN_TXT, 'r');
if fid < 0
    error('Cannot open input file: %s', IN_TXT);
end

C = textscan(fid, '%s');
fclose(fid);

lines = C{1};
lines = lines(~cellfun('isempty', lines));

words_in = uint32(hex2dec(lines));

if length(words_in) ~= 15360
    error('Input must be 15360 samples, but got %d', length(words_in));
end

%% Unpack {Q[15:0], I[15:0]}
[i_in, q_in] = unpack_qi(words_in);

%% DUC interpolation x4
% Stage 1: 30.72 -> 61.44 Msps
[i_stage1, q_stage1] = interp2_hb7_q15(i_in, q_in);

% Stage 2: 61.44 -> 122.88 Msps
[i_out, q_out] = interp2_hb7_q15(i_stage1, q_stage1);

%% Pack output
words_out = pack_qi(q_out, i_out);

%% Check length
fprintf('Input samples  : %d\n', length(words_in));
fprintf('Output samples : %d\n', length(words_out));
fprintf('Output bytes   : %d\n', length(words_out) * 4);

if length(words_out) ~= 61440
    error('Output must be 61440 samples, but got %d', length(words_out));
end

%% Write output TXT
fid = fopen(OUT_TXT, 'w');
for k = 1:length(words_out)
    fprintf(fid, '%s\n', upper(dec2hex(words_out(k), 8)));
end
fclose(fid);

%% Write output BIN
fid = fopen(OUT_BIN, 'w');
fwrite(fid, words_out, 'uint32', 0, 'ieee-le');
fclose(fid);

%% Write output C header
write_header(OUT_H, 'lte20_duc_golden_q15', words_out);

%% Convert to complex for plotting
x_in  = double(i_in)  / 32768 + 1j * double(q_in)  / 32768;
x_out = double(i_out) / 32768 + 1j * double(q_out) / 32768;

%% Plot input spectrum
figure;
pspectrum(x_in, Fs_in, ...
    'FrequencyLimits', [-15.36e6 15.36e6]);
title('Input LTE-like 20 MHz Slot @ 30.72 Msps');

%% Plot output spectrum after DUC
figure;
pspectrum(x_out, Fs_out, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('After DUC x4 @ 122.88 Msps');

%% Print first output words
fprintf('\nFirst 16 DUC output words:\n');
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

function [i_out, q_out] = interp2_hb7_q15(i_in, q_in)
    N = length(i_in);

    i_out = zeros(2*N, 1, 'int16');
    q_out = zeros(2*N, 1, 'int16');

    % History registers
    i_x1 = 0; i_x2 = 0; i_x3 = 0;
    q_x1 = 0; q_x2 = 0; q_x3 = 0;

    for n = 1:N
        i_x0 = double(i_in(n));
        q_x0 = double(q_in(n));

        % Halfband FIR:
        % h = [-1 0 9 16 9 0 -1] / 16
        %
        % For interpolation x2:
        % y_even = (-x[n] + 9*x[n-1] + 9*x[n-2] - x[n-3]) / 16
        % y_odd  = x[n-1]
        %
        % This is causal streaming mode, no tail flush.

        i_acc_even = -i_x0 + 9*i_x1 + 9*i_x2 - i_x3;
        q_acc_even = -q_x0 + 9*q_x1 + 9*q_x2 - q_x3;

        i_even = sat16(floor(i_acc_even / 16));
        q_even = sat16(floor(q_acc_even / 16));

        i_odd = sat16(i_x1);
        q_odd = sat16(q_x1);

        i_out(2*n - 1) = i_even;
        q_out(2*n - 1) = q_even;

        i_out(2*n) = i_odd;
        q_out(2*n) = q_odd;

        % Update history
        i_x3 = i_x2;
        i_x2 = i_x1;
        i_x1 = i_x0;

        q_x3 = q_x2;
        q_x2 = q_x1;
        q_x1 = q_x0;
    end
end

function y = sat16(x)
    x = round(x);

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

    fprintf(fid, '#define LTE20_DUC_OUT_SAMPLES %d\n', length(words));
    fprintf(fid, '#define LTE20_DUC_OUT_BYTES   (LTE20_DUC_OUT_SAMPLES * 4)\n\n');

    fprintf(fid, 'static const uint32_t %s[LTE20_DUC_OUT_SAMPLES] = {\n', array_name);

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