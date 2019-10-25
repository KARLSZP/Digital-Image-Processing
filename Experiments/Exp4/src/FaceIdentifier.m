clc, clear;

I = imread('assets/t1.jpg');

[Faced_I, cr_I, ba] = FaceIdentification(I);
figure; 
subplot(121); imshow(I);
subplot(122); imshow(Faced_I);
saveas(gcf, 'assets/FaceIdentification/res1.png');
% figure; imshow(cr_I);
% figure; imshow(ba);