k = 4; %resolution factor must be an Integer! by how much we want to enlarge the image 
q = 7; %low pass filter order
a = imread('homer.jpg');
a = rgb2gray(a);
[m, n] = size(a);
b= [];
c= [];

tic
for i = 1:n %runs on columns
    [~,vec] = meshgrid(1:k, a(:,i));%moltiply the width by k
    b = [b vec]; 
end

for i = 1:m %runs on rows
    [vec1,~] = meshgrid( b(i,:),1:k);%moltiply the hight by k
    c = [c ;vec1];
end
toc
%-------filtering enlarged image--------
%we have 2 choices: 
%1)low pass filter - boundries are less sharp
%2)gaussian filter - does a better job at keeping boundries sharp
%-------low pass qxq--------------------
% kernel = (1/q^2)*ones(q);
% d = imfilter(c,kernel);
%-------gaussian variance 1.5-----------
d = imgaussfilt(c,1.5);
%---------------------------------------

figure(1)
imshow(a);
title('original image 201x251');

figure(2)
imshow(c);
title('Enlarged x4 Image 804x1004');

figure(3)
imshow(d);
title('smooth filtered image gaussian mean = 1.5 804x1004');

figure(4)
subplot(1,2,1);
imhist(c);
title('Enlarged image Histogram');
subplot(1,2,2);
imhist(d);
title('Enlarged filtered image Histogram');

