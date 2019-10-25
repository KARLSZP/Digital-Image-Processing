% PJ0403
close all; clear, clc;
img1 = imread('./Fig4.04(a).jpg');
img2 = imread('./Fig4.41(a).jpg');
img3 = imread('./Fig4.41(b).jpg');
img4 = imread('./Fig0418(a).tif');

% a
% Refer to gauss_lowpass.m

% b
[M, N] = size(img4);
gauss_lp = gauss_lowpass(img4, M/2, N/2, 10);
% imwrite(uint8(gauss_lp), './Fig0418(b).tif');

figure(1);
subplot(121); imshow(img4); title('Origin');
subplot(122); imshow(uint8(gauss_lp)); title('Gauss\_Lowpass(sig=10)');
