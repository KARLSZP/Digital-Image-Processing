% PJ0404
close all; clear, clc;
img1 = imread('./Fig4.04(a).jpg');
img2 = imread('./Fig4.41(a).jpg');
img3 = imread('./Fig4.41(b).jpg');
img4 = imread('./Fig0418(a).tif');
lp_img4 = imread('./Fig0418(b).tif');

% a
s_img1 = img4 - lp_img4;

% b
[M, N] = size(img4);
gauss_lp = gauss_lowpass(img4, M/2, N/2, 40);
s_img2 = img4 - uint8(gauss_lp);

figure(1);
subplot(221); imshow(img4); title('Origin');
subplot(222); imshow(lp_img4); title('Gauss\_Lowpass(sig=10)');
subplot(223); imshow(uint8(s_img1)); title('Sharpend from sig = 10');
subplot(224); imshow(uint8(s_img2)); title('Sharpend from sig = 40');