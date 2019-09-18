% PJ0306
clear, clc;

I = im2double(imread("../assets/Fig3.43(a).jpg"));

% mask = [0 1 0; 1 -4 1; 0 1 0];
mask = [1 1 1; 1 -8 1; 1  1 1];

A = [1 1.7 2 2.7];
laplacian_I = spatialfilter(I, mask);
for i = 1:4
    hb_I = A(i) .* I + laplacian_I;
    figure(i);
    subplot(121); imshow(I), title("Origin");
    subplot(122); imshow(hb_I), title("A = " + A(i));
    saveas(gcf, "Unsharp masking(A = " + A(i) + ").png")
end
