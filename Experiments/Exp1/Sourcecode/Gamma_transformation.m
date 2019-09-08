clear, clc;

I = imread("./Fig0308(a)(fractured_spine).tif");
g_img= mat2gray(I, [0 255]);

% Gamma Transformation: s = C*r^Gamma
C = 1;
Gamma_lighten = [0.05:0.05:1];
Gamma_darken = [1:20];

figure(1);
subplot(121); imshow(I), title("Original Image");
subplot(122); imshow(g_img), title("Gray-scale Image");
saveas(gcf,"Gamma-T 1.png");

for f = 2:6
    figure(f);
    for i = 1:4
        subplot(2, 2, i);
        imshow(C*g_img.^Gamma_lighten(i+(f-2)*4), [0 1]);
        title("Gamma-T ("+Gamma_lighten(i+(f-2)*4)+")");
    end
    path_name = "Gamma-T "+ f +".png"; 
    saveas(gcf,path_name);
end