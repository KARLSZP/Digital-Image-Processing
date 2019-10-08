function res = centralize(img)
    [M, N] = size(img);
    [Y, X] = meshgrid(1:N, 1:M);
    c = (-1).^(X + Y);
    res = double(img) .* c;
end