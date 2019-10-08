% PJ0406
close all; clear, clc;
img1 = imread('./Fig4.04(a).jpg');

I45 = rotate(img1, 45);
I90 = rotate(img1, 90);
I135 = rotate(img1, 135);
I180 = rotate(img1, 180);

figure(1);
subplot(221); imshow(I45); title('Rotated: 45^。');
subplot(222); imshow(I90); title('Rotated: 90^。');
subplot(223); imshow(I135); title('Rotated: 135^。');
subplot(224); imshow(I180); title('Rotated: 180^。');

S45 = spectrum(IFFT(centralize(I45)));
S90 = spectrum(IFFT(centralize(I90)));
S135 = spectrum(IFFT(centralize(I135)));
S180 = spectrum(IFFT(centralize(I180)));

figure(2);
subplot(221); imshow(S45); title('Rotated: 45^。');
subplot(222); imshow(S90); title('Rotated: 90^。');
subplot(223); imshow(S135); title('Rotated: 135^。');
subplot(224); imshow(S180); title('Rotated: 180^。');