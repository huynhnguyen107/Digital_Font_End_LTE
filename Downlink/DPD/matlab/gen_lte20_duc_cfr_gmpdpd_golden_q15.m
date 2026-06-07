clear; clc;

%% Files
IN_TXT  = 'lte20_slot_q15.txt';

OUT_TXT = 'lte20_duc_cfr_gmpdpd_golden_q15.txt';
OUT_BIN = 'lte20_duc_cfr_gmpdpd_golden_q15.bin';
OUT_H   = 'lte20_duc_cfr_gmpdpd_golden_q15.h';

REPORT_TXT = 'lte20_duc_cfr_gmpdpd_report.txt';

%% Sample rates
Fs_in  = 30.72e6;
Fs_out = 122.88e6;

%% CFR threshold
% 0x4CCC = 19660 ~= 0.6 in Q1.15
CFR_THRESHOLD = hex2dec('4CCC');

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
[i_duc, q_duc] = interp2_hb7_q15(i_stage1, q_stage1);

duc = pack_qi(q_duc, i_duc);

%% CFR clipping after DUC
[i_cfr, q_cfr, iq_clip_count] = cfr_mag_clip_q15(i_duc, q_duc, CFR_THRESHOLD);

i_clip_count = sum(i_duc ~= i_cfr);
q_clip_count = sum(q_duc ~= q_cfr);

%% GMP-DPD after CFR
coef = init_gmp_dpd_coeff_q214();

[i_out, q_out, dpd_sat_count] = gmp_dpd_q15(i_cfr, q_cfr, coef);

%% Pack output
words_out = pack_qi(q_out, i_out);

%% Check length
fprintf('Input samples              : %d\n', length(words_in));
fprintf('DUC output samples         : %d\n', length(i_duc));
fprintf('CFR output samples         : %d\n', length(i_cfr));
fprintf('GMP-DPD output samples     : %d\n', length(words_out));
fprintf('GMP-DPD output bytes       : %d\n', length(words_out) * 4);

if length(words_out) ~= 61440
    error('Output must be 61440 samples, but got %d', length(words_out));
end

%% Write output TXT
fid = fopen(OUT_TXT, 'w');
if fid < 0
    error('Cannot open output txt file: %s', OUT_TXT);
end

for k = 1:length(words_out)
    fprintf(fid, '%s\n', upper(dec2hex(words_out(k), 8)));
end
fclose(fid);

%% Write output BIN
fid = fopen(OUT_BIN, 'w');
if fid < 0
    error('Cannot open output bin file: %s', OUT_BIN);
end

fwrite(fid, words_out, 'uint32', 0, 'ieee-le');
fclose(fid);

%% Write output C header
write_header(OUT_H, 'lte20_duc_cfr_gmpdpd_golden_q15', words_out);

%% Convert to complex for plotting and PAPR
x_in  = double(i_in)  / 32768 + 1j * double(q_in)  / 32768;
x_duc = double(i_duc) / 32768 + 1j * double(q_duc) / 32768;
x_cfr = double(i_cfr) / 32768 + 1j * double(q_cfr) / 32768;
x_out = double(i_out) / 32768 + 1j * double(q_out) / 32768;

%% PAPR report
papr_duc_db = calc_papr_db(x_duc);
papr_cfr_db = calc_papr_db(x_cfr);
papr_dpd_db = calc_papr_db(x_out);

papr_reduction_cfr_db = papr_duc_db - papr_cfr_db;
papr_change_dpd_db    = papr_dpd_db - papr_cfr_db;

peak_duc = max(abs(x_duc));
peak_cfr = max(abs(x_cfr));
peak_dpd = max(abs(x_out));

rms_duc = sqrt(mean(abs(x_duc).^2));
rms_cfr = sqrt(mean(abs(x_cfr).^2));
rms_dpd = sqrt(mean(abs(x_out).^2));

fprintf('\n================ DUC+CFR+GMP-DPD REPORT ================\n');
fprintf('CFR threshold          : 0x%04X\n', CFR_THRESHOLD);
fprintf('CFR threshold Q1.15    : %.6f\n', CFR_THRESHOLD / 32768);
fprintf('Input samples          : %d\n', length(words_in));
fprintf('Output samples         : %d\n', length(words_out));
fprintf('Sampling rate out      : %.2f Msps\n', Fs_out / 1e6);
fprintf('\n');
fprintf('Peak before CFR        : %.6f\n', peak_duc);
fprintf('RMS before CFR         : %.6f\n', rms_duc);
fprintf('PAPR before CFR        : %.2f dB\n', papr_duc_db);
fprintf('\n');
fprintf('Peak after CFR         : %.6f\n', peak_cfr);
fprintf('RMS after CFR          : %.6f\n', rms_cfr);
fprintf('PAPR after CFR         : %.2f dB\n', papr_cfr_db);
fprintf('\n');
fprintf('Peak after GMP-DPD     : %.6f\n', peak_dpd);
fprintf('RMS after GMP-DPD      : %.6f\n', rms_dpd);
fprintf('PAPR after GMP-DPD     : %.2f dB\n', papr_dpd_db);
fprintf('\n');
fprintf('PAPR reduction by CFR  : %.2f dB\n', papr_reduction_cfr_db);
fprintf('PAPR change by GMP-DPD : %.2f dB\n', papr_change_dpd_db);
fprintf('I clip count           : %d\n', i_clip_count);
fprintf('Q clip count           : %d\n', q_clip_count);
fprintf('IQ sample clip count   : %d\n', iq_clip_count);
fprintf('DPD saturation count   : %d\n', dpd_sat_count);
fprintf('=========================================================\n');

%% Write report TXT
fid = fopen(REPORT_TXT, 'w');
if fid < 0
    error('Cannot open report file: %s', REPORT_TXT);
end

fprintf(fid, 'AXI-DMA-Based LTE 20 MHz DUC+CFR+GMP-DPD Report\n');
fprintf(fid, '================================================\n\n');

fprintf(fid, 'CFR threshold          : 0x%04X\n', CFR_THRESHOLD);
fprintf(fid, 'CFR threshold Q1.15    : %.6f\n', CFR_THRESHOLD / 32768);
fprintf(fid, 'Input samples          : %d\n', length(words_in));
fprintf(fid, 'Output samples         : %d\n', length(words_out));
fprintf(fid, 'Sampling rate out      : %.2f Msps\n\n', Fs_out / 1e6);

fprintf(fid, 'Peak before CFR        : %.6f\n', peak_duc);
fprintf(fid, 'RMS before CFR         : %.6f\n', rms_duc);
fprintf(fid, 'PAPR before CFR        : %.2f dB\n\n', papr_duc_db);

fprintf(fid, 'Peak after CFR         : %.6f\n', peak_cfr);
fprintf(fid, 'RMS after CFR          : %.6f\n', rms_cfr);
fprintf(fid, 'PAPR after CFR         : %.2f dB\n\n', papr_cfr_db);

fprintf(fid, 'Peak after GMP-DPD     : %.6f\n', peak_dpd);
fprintf(fid, 'RMS after GMP-DPD      : %.6f\n', rms_dpd);
fprintf(fid, 'PAPR after GMP-DPD     : %.2f dB\n\n', papr_dpd_db);

fprintf(fid, 'PAPR reduction by CFR  : %.2f dB\n', papr_reduction_cfr_db);
fprintf(fid, 'PAPR change by GMP-DPD : %.2f dB\n', papr_change_dpd_db);
fprintf(fid, 'I clip count           : %d\n', i_clip_count);
fprintf(fid, 'Q clip count           : %d\n', q_clip_count);
fprintf(fid, 'IQ sample clip count   : %d\n', iq_clip_count);
fprintf(fid, 'DPD saturation count   : %d\n', dpd_sat_count);

fclose(fid);

%% Plot input spectrum
figure;
pspectrum(x_in, Fs_in, ...
    'FrequencyLimits', [-15.36e6 15.36e6]);
title('Input LTE-like 20 MHz Slot @ 30.72 Msps');

%% Plot DUC spectrum before CFR
figure;
pspectrum(x_duc, Fs_out, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('After DUC x4 Before CFR @ 122.88 Msps');

%% Plot DUC+CFR spectrum
figure;
pspectrum(x_cfr, Fs_out, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('After DUC x4 + CFR @ 122.88 Msps');

%% Plot DUC+CFR+GMP-DPD spectrum
figure;
pspectrum(x_out, Fs_out, ...
    'FrequencyLimits', [-61.44e6 61.44e6]);
title('After DUC x4 + CFR + GMP-DPD @ 122.88 Msps');

%% Print first output words
fprintf('\nFirst 16 DUC+CFR+GMP-DPD output words:\n');
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
        % Streaming mode, no tail flush.

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

function [i_out, q_out, clip_count] = cfr_mag_clip_q15(i_in, q_in, threshold)
    % Magnitude clipping hardware-friendly model:
    % mag = sqrt(I^2 + Q^2)
    % if mag > threshold:
    %   scale = threshold / mag
    %   I_out = I * scale
    %   Q_out = Q * scale
    %
    % This version uses floor-like behavior to match signed FPGA arithmetic.

    id = double(i_in);
    qd = double(q_in);

    power_i   = floor(id.^2 / 2^15) * 2^15;
    power_q   = floor(qd.^2 / 2^15) * 2^15;
    power_sum = floor(power_i + power_q);

    mag = floor(sqrt(power_sum));

    scale = ones(size(mag));

    clip_idx = (mag > threshold) & (mag > 0);

    scale(clip_idx) = threshold ./ mag(clip_idx);

    % Q1.15 scale quantization
    scale_q15_real = floor(scale * 2^15) / 2^15;

    i_out_d = id .* scale_q15_real;
    q_out_d = qd .* scale_q15_real;

    i_out = int16(floor(i_out_d));
    q_out = int16(floor(q_out_d));

    clip_count = sum(clip_idx);
end

function coef = init_gmp_dpd_coeff_q214()
    % GMP-DPD coefficient format:
    % coefficient = signed Q2.14
    %
    % Main memory polynomial:
    % orders p = 1, 3, 5
    % memory m = 0, 1, 2, 3
    %
    % Cross-memory GMP:
    % orders p = 3, 5
    % memory m = 0, 1, 2
    % lag l = 1, 2

    coef.main_orders  = [1 3 5];
    coef.cross_orders = [3 5];

    coef.M_main  = 4;
    coef.M_cross = 3;
    coef.L_cross = 2;

    %% Main coefficients
    % main_re/order_index, memory_index
    main_re_f = zeros(length(coef.main_orders), coef.M_main);
    main_im_f = zeros(length(coef.main_orders), coef.M_main);

    % p = 1 linear memory terms
    main_re_f(1,1) = 1.0000;    % x[n]
    main_re_f(1,2) = 0.0120;    % x[n-1]
    main_re_f(1,3) = -0.0060;   % x[n-2]
    main_re_f(1,4) = 0.0030;    % x[n-3]

    main_im_f(1,1) = 0.0000;
    main_im_f(1,2) = 0.0020;
    main_im_f(1,3) = -0.0010;
    main_im_f(1,4) = 0.0005;

    % p = 3 nonlinear memory terms
    main_re_f(2,1) = 0.0800;
    main_re_f(2,2) = 0.0200;
    main_re_f(2,3) = -0.0120;
    main_re_f(2,4) = 0.0060;

    main_im_f(2,1) = 0.0060;
    main_im_f(2,2) = -0.0030;
    main_im_f(2,3) = 0.0015;
    main_im_f(2,4) = 0.0000;

    % p = 5 nonlinear memory terms
    main_re_f(3,1) = -0.0250;
    main_re_f(3,2) = -0.0080;
    main_re_f(3,3) = 0.0040;
    main_re_f(3,4) = -0.0020;

    main_im_f(3,1) = -0.0020;
    main_im_f(3,2) = 0.0010;
    main_im_f(3,3) = 0.0000;
    main_im_f(3,4) = 0.0000;

    coef.main_re = to_q214(main_re_f);
    coef.main_im = to_q214(main_im_f);

    %% Cross-memory coefficients
    % cross_re/order_index, memory_index, lag_index
    cross_re_f = zeros(length(coef.cross_orders), coef.M_cross, coef.L_cross);
    cross_im_f = zeros(length(coef.cross_orders), coef.M_cross, coef.L_cross);

    % p = 3 cross-memory terms
    cross_re_f(1,1,1) = 0.0150;    % x[n]   * |x[n-1]|^2
    cross_re_f(1,1,2) = -0.0100;   % x[n]   * |x[n-2]|^2
    cross_re_f(1,2,1) = 0.0080;    % x[n-1] * |x[n-2]|^2
    cross_re_f(1,2,2) = -0.0040;   % x[n-1] * |x[n-3]|^2
    cross_re_f(1,3,1) = 0.0030;    % x[n-2] * |x[n-3]|^2
    cross_re_f(1,3,2) = -0.0020;   % x[n-2] * |x[n-4]|^2

    cross_im_f(1,1,1) = 0.0020;
    cross_im_f(1,1,2) = -0.0015;
    cross_im_f(1,2,1) = 0.0010;
    cross_im_f(1,2,2) = 0.0000;
    cross_im_f(1,3,1) = -0.0005;
    cross_im_f(1,3,2) = 0.0000;

    % p = 5 cross-memory terms
    cross_re_f(2,1,1) = -0.0060; % x[n]   * |x[n-1]|^4
    cross_re_f(2,1,2) = 0.0040;  % x[n]   * |x[n-2]|^4
    cross_re_f(2,2,1) = -0.0030; % x[n-1] * |x[n-2]|^4
    cross_re_f(2,2,2) = 0.0020;  % x[n-1] * |x[n-3]|^4
    cross_re_f(2,3,1) = -0.0015; % x[n-2] * |x[n-3]|^4
    cross_re_f(2,3,2) = 0.0010;  % x[n-2] * |x[n-4]|^4

    cross_im_f(2,1,1) = -0.0010;
    cross_im_f(2,1,2) = 0.0005;
    cross_im_f(2,2,1) = 0.0000;
    cross_im_f(2,2,2) = 0.0000;
    cross_im_f(2,3,1) = 0.0000;
    cross_im_f(2,3,2) = 0.0000;

    coef.cross_re = to_q214(cross_re_f);
    coef.cross_im = to_q214(cross_im_f);
end

function q = to_q214(x)
    % Convert floating-point coefficient to signed Q2.14.
    %
    % 1.0 -> 0x4000
    % 0.5 -> 0x2000

    q = round(x * 2^14);

    q(q > 32767)  = 32767;
    q(q < -32768) = -32768;

    q = int16(q);
end

function [i_out, q_out, sat_count] = gmp_dpd_q15(i_in, q_in, coef)
    % Fixed-point RTL-friendly GMP-DPD golden model.
    %
    % Input:
    %   I/Q      : signed Q1.15
    %
    % Coeff:
    %   coef     : signed Q2.14
    %
    % Main basis:
    %   p = 1: x[n-m]
    %   p = 3: x[n-m] * |x[n-m]|^2
    %   p = 5: x[n-m] * |x[n-m]|^4
    %
    % Cross basis:
    %p=3    % x[n]   * |x[n-1]|^2
            % x[n]   * |x[n-2]|^2
            % x[n-1] * |x[n-2]|^2
            % x[n-1] * |x[n-3]|^2
            % x[n-2] * |x[n-3]|^2
            % x[n-2] * |x[n-4]|^2
     %p=5    % x[n]   * |x[n-1]|^4
        % x[n]   * |x[n-2]|^4
        % x[n-1] * |x[n-2]|^4
        % x[n-1] * |x[n-3]|^4
        % x[n-2] * |x[n-3]|^4
        % x[n-2] * |x[n-4]|^4


    N = length(i_in);

    id = double(i_in(:));
    qd = double(q_in(:));

    % Enough delay for:
    % M_cross = 3, L_cross = 2 => max delay = 4
    % use 6 for margin.
    max_delay = 6;

    i_pad = [zeros(max_delay, 1); id];
    q_pad = [zeros(max_delay, 1); qd];

    i_out_d = zeros(N, 1);
    q_out_d = zeros(N, 1);

    sat_count = 0;

    for n = 1:N
        center = n + max_delay;

        acc_i = 0;
        acc_q = 0;

        %% Main memory polynomial terms
        for oi = 1:length(coef.main_orders)
            p = coef.main_orders(oi);

            for m = 0:(coef.M_main - 1)
                idx = center - m;

                xi = i_pad(idx);
                xq = q_pad(idx);

                [br, bi] = gmp_basis_q15(xi, xq, xi, xq, p);

                cr = double(coef.main_re(oi, m+1));
                ci = double(coef.main_im(oi, m+1));

                [ti, tq] = complex_mul_basis_coef_q15_q214(br, bi, cr, ci);

                acc_i = acc_i + ti;
                acc_q = acc_q + tq;
            end
        end

        %% Cross-memory GMP terms
        for oi = 1:length(coef.cross_orders)
            p = coef.cross_orders(oi);

            for m = 0:(coef.M_cross - 1)
                idx_x = center - m;

                xi = i_pad(idx_x);
                xq = q_pad(idx_x);

                for l = 1:coef.L_cross
                    idx_env = center - m - l;

                    ei = i_pad(idx_env);
                    eq = q_pad(idx_env);

                    [br, bi] = gmp_basis_q15(xi, xq, ei, eq, p);

                    cr = double(coef.cross_re(oi, m+1, l));
                    ci = double(coef.cross_im(oi, m+1, l));

                    [ti, tq] = complex_mul_basis_coef_q15_q214(br, bi, cr, ci);

                    acc_i = acc_i + ti;
                    acc_q = acc_q + tq;
                end
            end
        end

        [i_sat, sat_i] = sat16_count(acc_i);
        [q_sat, sat_q] = sat16_count(acc_q);

        i_out_d(n) = i_sat;
        q_out_d(n) = q_sat;

        sat_count = sat_count + sat_i + sat_q;
    end

    i_out = int16(i_out_d);
    q_out = int16(q_out_d);
end

function [br, bi] = gmp_basis_q15(xi, xq, ei, eq, p)
    % xi/xq = complex sample used as x[n-m]
    % ei/eq = envelope sample used for |x[n-m-l]|
    %
    % Output basis br/bi is signed Q1.15 integer.

    xi_i64 = int64(xi);
    xq_i64 = int64(xq);
    ei_i64 = int64(ei);
    eq_i64 = int64(eq);

    % r2 = I^2 + Q^2
    % Q1.15 * Q1.15 = Q2.30
    r2 = ei_i64 * ei_i64 + eq_i64 * eq_i64;

    if p == 1
        % Unity envelope in Q2.30
        env = int64(2^30);
    elseif p == 3
        % |x|^2
        env = r2;
    elseif p == 5
        % |x|^4 = r2 * r2, shifted back by 30
        env = floor_div_s64(r2 * r2, int64(2^30));
    else
        error('Unsupported GMP order p = %d', p);
    end

    % basis = x * env
    % x is Q1.15, env is Q?.30, output back to Q1.15
    br_i64 = floor_div_s64(xi_i64 * env, int64(2^30));
    bi_i64 = floor_div_s64(xq_i64 * env, int64(2^30));

    br = double(br_i64);
    bi = double(bi_i64);
end

function [yi, yq] = complex_mul_basis_coef_q15_q214(br, bi, cr, ci)
    % basis = br + j bi, Q1.15
    % coef  = cr + j ci, Q2.14
    %
    % output = basis * coef, back to Q1.15

    br_i64 = int64(br);
    bi_i64 = int64(bi);
    cr_i64 = int64(cr);
    ci_i64 = int64(ci);

    real_num = br_i64 * cr_i64 - bi_i64 * ci_i64;
    imag_num = br_i64 * ci_i64 + bi_i64 * cr_i64;

    yi_i64 = floor_div_s64(real_num, int64(2^14));
    yq_i64 = floor_div_s64(imag_num, int64(2^14));

    yi = double(yi_i64);
    yq = double(yq_i64);
end

function q = floor_div_s64(num, den)
    % Signed floor division for FPGA arithmetic-shift-like behavior.
    q = idivide(int64(num), int64(den), 'floor');
end

function [y, sat] = sat16_count(x)
    sat = 0;

    x = floor(x);

    if x > 32767
        y = 32767;
        sat = 1;
    elseif x < -32768
        y = -32768;
        sat = 1;
    else
        y = x;
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

function papr_db = calc_papr_db(x)
    p = abs(x).^2;
    papr_db = 10 * log10(max(p) / mean(p));
end

function write_header(filename, array_name, words)
    fid = fopen(filename, 'w');

    if fid < 0
        error('Cannot open output header file: %s', filename);
    end

    guard = upper([array_name '_H']);
    macro = upper(array_name);

    fprintf(fid, '#ifndef %s\n', guard);
    fprintf(fid, '#define %s\n\n', guard);
    fprintf(fid, '#include <stdint.h>\n\n');

    fprintf(fid, '#define %s_SAMPLES %d\n', macro, length(words));
    fprintf(fid, '#define %s_BYTES   (%s_SAMPLES * 4)\n\n', macro, macro);

    fprintf(fid, 'static const uint32_t %s[%s_SAMPLES] = {\n', array_name, macro);

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