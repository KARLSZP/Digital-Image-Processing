clear, clc;

I = imread("./Fig0308(a)(fractured_spine).tif");
[J, T] = histeq(I);
figure(1);
subplot(221); imshow(I), title("Original Image");
subplot(223); imhist(I), title("Original Histogram");
subplot(222); imshow(J), title("Enhanced Image - with histeq()");
subplot(224); imhist(J), title("Enhanced - with histeq()");
figure(2); plot([0:255]/255, T), title("Transformation Func.");


[J, T] = my_histeq(I);
figure(3);
subplot(221); imshow(I), title("Original Image");
subplot(223); imhist(I), title("Original Histogram");
subplot(222); imshow(J), title("Enhanced Image - with myhisteq()");
subplot(224); imhist(J), title("Enhanced - with myhisteq()");
figure(4); plot(T), title("Transformation Func.");
    