% PJ0402
close all; clear, clc;
img1 = imread('./Fig4.04(a).jpg');
img2 = imread('./Fig4.41(a).jpg');
img3 = imread('./Fig4.41(b).jpg');
img4 = imread('./Fig0418(a).tif');

% a
spec = spectrum(fft2(centralize(double(img4))));

% b
figure(1);
subplot(121); imshow(img4); title('Origin');
subplot(122); imshow(uint8(spec.^0.4)); title('Spectrum');

% c
avg = mean(img4, 'all');
disp("average value of img4:");
disp(avg);