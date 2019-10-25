function hist = histeq_HSV2RGB(Img)
    HSV_I = rgb2hsv(Img);
    V = HSV_I(:,:,3);
    V_hist = histeq(V);
    HSV_I(:,:,3) = V_hist;
    hist = hsv2rgb(HSV_I);
end