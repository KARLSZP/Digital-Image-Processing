% PJ0405
close all; clear, clc;
img1 = imread('./Fig4.04(a).jpg');
img2 = imread('./Fig4.41(a).jpg');
img3 = imread('./Fig4.41(b).jpg');
img4 = imread('./Fig0418(a).tif');

[M1, N1] = size(img2);
[M2, N2] = size(img3);

I1 = zeros(298, 298);
I2 = zeros(298, 298);
I1(1:M1, 1:N1) = img2(1:M1, 1:N1);
I2(1:M2, 1:N2) = img3(1:M2, 1:N2);

cor = fft2(centralize(I2)) .* conj(fft2(centralize(I1)));
res = centralizeR(IFFT(cor));

figure(1);
subplot(131); imshow(img2); title('Origin');
subplot(132); imshow(img3); title('Mask');
subplot(133); imshow(mat2gray(res), []); title('Correlation');

max_val = max(max(res));
[r, c] = find(res == max_val);
disp("Max value:"); disp(max_val);
disp(" at "); disp([r, c]);