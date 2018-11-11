%------------------------------------------------
B = imread('buffalo.png');       %read an image
A = imcrop(B,[1,261,481,321]);   %crop the image in the specified dimensions    
%imwrite(A,'Cropped.png')        %optional: save the cropped image
Ar=A(:,:,1);                     %Red inetnsity matrix
Ag=A(:,:,2);                     %Grenn intensity matrix
Ab=A(:,:,3);                     %Blue intensity matrix
%------------------exponential------------------------------

C = 1/255;
gama = 1.8;

b1 = double(Ar);
calc1 = (C*b1).^gama;

b2 = double(Ag);
calc2 = (C*b2).^gama;

b3 = double(Ab);
calc3 = (C*b3).^gama;

D(:,:,1)=calc1;
D(:,:,2)=calc2;
D(:,:,3)=calc3;

figure(1);
subplot(2,3,1); imhist(Ar); title('Red before');
subplot(2,3,4); imhist(calc1); title('Red after');

subplot(2,3,2); imhist(Ag); title('Green before');
subplot(2,3,5); imhist(calc2); title('Green after');

subplot(2,3,3); imhist(Ab); title('Blue before');
subplot(2,3,6); imhist(calc3); title('Blue after');

figure(2)
subplot(1, 2, 1)
imshow(A); title('Original');
subplot(1, 2, 2)
imshow(D); title('After EXPONENTIAL transformation');
%------------------------------------------------







