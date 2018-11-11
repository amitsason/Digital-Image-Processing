I = imread('homer.jpg');
I = rgb2gray(I);
I = im2double(I);
r = rand(size(I))-0.5;
J = I+r; %add +- 10 green noise
% CG = bifilter2(J);
W = wiener2(J,[7 7]);

figure(1)
subplot(2, 2, 1)
imshow(I)
title('Original Image');
subplot(2, 2, 3)
imhist(I)
title('Original Image Hist');
subplot(2, 2, 2)
imshow(J)
title('Noisy Image');
subplot(2, 2, 4)
imhist(J)
title('Noisy Image Hist');
suptitle('ORIGINAL AND NOISY')
%----------------------------------------------


figure(2)
subplot(2, 2, 1)
imshow(J)
title('Noisy Image');
subplot(2, 2, 3)
imhist(J)
title('Noisy Image Hist');
subplot(2, 2, 2)
imshow(W)
title('Filtered Image wiener');
subplot(2, 2, 4)
imhist(W)
title('Filtered Image Hist');
suptitle('NOISY AND FILTERED wiener')

