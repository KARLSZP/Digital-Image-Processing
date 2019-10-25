clc, clear;

I = imread('assets/t1.jpg');
figure; 
subplot(221); imshow(I);
subplot(223); imhist(I);

histeq_I = histeq_HSV2RGB(I);
subplot(222); imshow(histeq_I);
subplot(224); imhist(histeq_I);
saveas(gcf, './HSV2RGB_res6.png');

