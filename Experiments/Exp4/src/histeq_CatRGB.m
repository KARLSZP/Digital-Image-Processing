function hist = histeq_CatRGB(Img)
    R = Img(:,:,1);
    G = Img(:,:,2);
    B = Img(:,:,3);
    R_hist = histeq(R);
    G_hist = histeq(G);
    B_hist = histeq(B);
    hist = cat(3, R_hist, G_hist, B_hist);
end