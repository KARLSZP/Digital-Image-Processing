function res = Gauss_BandStopFilter(Img, sig, W, n)
    [M, N] = size(Img);
    fbrf=ones(M,N);
    for r=1:M
        for c=1:N
            D = (r - M/2)^2 + (c - N/2)^2;
            fbrf(r,c) = 1.0/(1+(sqrt(D)*W/(D-sig^2))^(2*n));
        end
    end
    H=fbrf;
    figure; imshow(H);
    res = fft2(centralize(Img)).*H;
    res = centralize(real(ifft2(res)));
end