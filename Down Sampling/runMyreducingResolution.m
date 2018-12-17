% a = magic(7);
a = imread('homer.jpg');
a = rgb2gray(a);
k = 2; 
[c] = myDownSampling(a, k);
% max(max(a([1 2],[1 2])));
figure(1)
subplot(1,2,1);
imshow(a);
title('Original Image 201x251');
subplot(1,2,2);
imshow(c);
title('DownSampled Image k = 4 50x62');
figure(2)
imshow(c);
title('DownSampled Image k = 4 50x62');
figure(3)
imshow(a)
title('Original Image 201x251');


