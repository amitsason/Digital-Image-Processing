
b = imread('homer.jpg');
b = rgb2gray(b);

title('original image histogram')
g = imadjust(b);
 
figure(1)
subplot(2,1,1);imshow(b);title('original Grey scale image');
subplot(2,1,2);imhist(b);title('histogram of origina image');

b1 = im2double(b);
Bmin = min(min(b1));
Bmax = max(max(b1));
calc1 = (b1-Bmin)*(1/(Bmax-Bmin));
C = 1/(log10(256));
b1 = double(b);
calc2 = C*log10(1 + b1);
B = b1/255;
calc3 = B.^2;
 
figure(2);
subplot(2,3,1);imshow(calc1);title('linear');
subplot(2,3,2);imshow(calc2);title('log');
subplot(2,3,3);imshow(calc3);title('exponent');
subplot(2,3,4);imhist(calc1);
subplot(2,3,5);imhist(calc2);
subplot(2,3,6);imhist(calc3);

