function [res, cr, ba] = FaceIdentification(Img)
    ycbcr = rgb2ycbcr(Img);
    cr = ycbcr(:,:,3);
    cr(cr>140 & cr<160) = 255;
    cr(cr~=255) = 0;
    ba = bwareaopen(cr, 500);
    [r, c] = find(ba);
    res = Img;
    [max_r, max_c] = size(Img);
    r_min = max(min(r), 4);
    r_max = min(max(r), max_r-3);
    c_min = max(min(c), 4);
    c_max = min(max(c), max_c-3);
    
    res(r_min-3:r_min+3,c_min:c_max,1) = 255;
    res(r_max-3:r_max+3,c_min:c_max,1) = 255;
    res(r_min:r_max,c_min-3:c_min+3,1) = 255;
    res(r_min:r_max,c_max-3:c_max+3,1) = 255;

    res(r_min-3:r_min+3,c_min:c_max,2:3) = 0;
    res(r_max-3:r_max+3,c_min:c_max,2:3) = 0;
    res(r_min:r_max,c_min-3:c_min+3,2:3) = 0;
    res(r_min:r_max,c_max-3:c_max+3,2:3) = 0;
end