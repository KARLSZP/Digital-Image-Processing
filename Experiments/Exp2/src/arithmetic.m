function [res] = arithmetic(im1, im2, SIZE, op)

im1 = imresize(im1, SIZE);
im2 = imresize(im2, SIZE);

if (op == "+")
    res = im1 + im2;
else
    if (op == "-")
        res = im1 - im2;
    else
        if (op == "*")
            res = im1 .* im2;
        else
            if (op == "/")
                res = im1 ./ im2;
            end
        end
    end
end
