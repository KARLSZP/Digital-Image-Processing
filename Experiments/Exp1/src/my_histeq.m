function [en_img, s] = my_histeq(I)
    [m, n] = size(I);
    f_img = reshape(I, m * n, 1); % f for flattened
    sf_img = sortrows(f_img);
    [A, ib, ic] = unique(sf_img);
    
    % �������p
    for i = 1:size(A)-1
        pxnum(i) = ib(i+1) - ib(i);
        p(i) = pxnum(i)/(m*n);
    end
    pxnum(i+1) = m*n - ib(i+1) + 1;
    p(i+1) = pxnum(i+1)/(m*n);
    
    % �����ۻ��ֲ�����P & �任����s
    sum = 0;
    for i = 1:size(A)
        sum = sum + p(i);
        P(i) = sum;
        s(i) = floor(double(max(sf_img) - min(sf_img)) * P(i) + 0.5);
        % s(i) = floor(double(256 .* P(i) + 0.5));
    end
    
    % �任
    for i = 1:m*n
        enf_img(i) = s(A==f_img(i));
    end
    en_img = uint8(reshape(enf_img, m, n));
    