clc, clear;

I = imread('assets/2.jpg');
[M, N] = size(I);

% figure; plot(abs(I(:,N/2+1)));

I_spec = log(1+abs(fftshift(fft2(I))));
figure; 
subplot(121); imshow(I);
subplot(122); imshow(I_spec, []);
saveas(gcf, 'assets/brf_PeriodicNoised.png');
I_bsf = Gauss_BandStopFilter(I, 100, 10, 2);
I_bsf_spec = log(1+abs(fftshift(fft2(I))));

figure; 
subplot(121); imshow(uint8(I_bsf));
subplot(122); imshow(I_bsf_spec, []);
saveas(gcf, 'assets/brf_PeriodicRemoved.png');