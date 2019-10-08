% PJ0401
close all; clear, clc;
img1 = imread('./Fig4.04(a).jpg');
img2 = imread('./Fig4.41(a).jpg');
img3 = imread('./Fig4.41(b).jpg');
img4 = imread('./Fig0418(a).tif');

% a
figure(1);
subplot(121); imshow(img4); title('Origin');
subplot(122); imshow(centralize(img4)); title('Centralized');

% b
% Refer to multi_complex.m

% c
% Refer to IFFT.m

% d
% Refer to centralizeR.m

% e
% Refer to spectrum.m