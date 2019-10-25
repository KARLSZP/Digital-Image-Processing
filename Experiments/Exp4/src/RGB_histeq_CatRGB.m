clc, clear;

I = imread('assets/t4.jpg');
figure; 
subplot(221); imshow(I);
subplot(223); imhist(I);

histeq_I = histeq_CatRGB(I);
subplot(222); imshow(histeq_I);
subplot(224); imhist(histeq_I);
saveas(gcf, './CatRGB_res6.png');