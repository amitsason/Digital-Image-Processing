
B = imread('buffalo.png');
A = imcrop(B,[1,261,481,321]);

Ar=A(:,:,1);
Ag=A(:,:,2);
Ab=A(:,:,3);
%------------------linear------------------------------
b1 = im2double(Ar);
Bmin1 = min(min(b1));
Bmax1 = max(max(b1));
calc1 = (b1-Bmin1)*(1/(Bmax1-Bmin1));
calc1 = uint8(255*calc1);

b2 = im2double(Ag);
Bmin2 = min(min(b2));
Bmax2 = max(max(b2));
calc2 = (b2-Bmin2)*(1/(Bmax2-Bmin2));
calc2 = uint8(255*calc2);


b3 = im2double(Ab);
Bmin3 = min(min(b3));
Bmax3 = max(max(b3));
calc3 = (b3-Bmin3)*(1/(Bmax3-Bmin3));
calc3 = uint8(255*calc3);

D(:,:,1)=calc1;
D(:,:,2)=calc2;
D(:,:,3)=calc3;

figure(1);
subplot(2,3,1); imhist(Ar); title('Red before');
subplot(2,3,4); imhist(calc1); title('Red after');

subplot(2,3,2); imhist(Ag); title('Green');
subplot(2,3,5); imhist(calc2); title('Green after');

subplot(2,3,3); imhist(Ab); title('Blue');
subplot(2,3,6); imhist(calc3); title('Blue after');

figure(2)
subplot(1, 2, 1)
imshow(A); title('Original');
subplot(1, 2, 2)
imshow(D); title('After Linear transformation');