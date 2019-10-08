function res = gauss_lowpass(img, fc_x, fc_y, sig)
    [M, N] = size(img);
    [Y, X] = meshgrid(1:N, 1:M);
    D = (X - fc_x).^2 + (Y - fc_y).^2;
    H = exp(-D/(2*sig^2));
    res = centralizeR(IFFT(H .* fft2(centralize(img))));
end