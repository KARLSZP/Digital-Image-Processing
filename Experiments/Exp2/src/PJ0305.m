% PJ0305
clc, clear;

I = im2double(imread("../assets/Fig3.40(a).jpg"));

% mask = [0 1 0; 1 -4 1; 0 1 0];
mask = [1 1 1; 1 -8 1; 1  1 1];
scale = [-2 -1 1 2];

% Laplacian without scaling
laplacian_I = spatialfilter(I, mask);
figure(1);
subplot(121); imshow(I), title("Origin");
subplot(122); imshow(laplacian_I), title("Laplacian");
saveas(gcf, "Origin-brief-laplacian.png")

% Laplacian with scaling
figure(2);
for i = 1:4
    scaled_laplacian_I = I + scale(i) .* laplacian_I;
    subplot(2, 2, i); imshow(scaled_laplacian_I), title("Scale = " + scale(i)); 
end
saveas(gcf, "neg-pos-scaletest.png")

% negative gradient scales
neg_scale = -4:0.5:-0.5;
figure(3);
for i = 1:4
    scaled_laplacian_I = I + neg_scale(i) .* laplacian_I;
    subplot(2, 2, i); imshow(scaled_laplacian_I), title("Scale = " + neg_scale(i)); 
end
saveas(gcf, "neg-gd-scale1.png")
figure(4);
for i = 5:8
    scaled_laplacian_I = I + neg_scale(i) .* laplacian_I;
    subplot(2, 2, i-4); imshow(scaled_laplacian_I), title("Scale = " + neg_scale(i)); 
end
saveas(gcf, "neg-gd-scale2.png")

