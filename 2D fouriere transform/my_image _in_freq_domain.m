clear all;
% x=1:1:64;
% periodx=3;
% fx= periodx/64;
% phi0x=-2*pi*fx-pi/2;
% f1=10/64;
% yx=(sin(2*pi*fx*x+phi0x)+1)/4+(sin(2*pi*f1*x+phi0x)+1)/4;

x=1:1:64;
f1 = 1/64;
f2 = 10/64;
yx = sin(2*pi*f1*x) + sin(2*pi*f2*x);

Y=[yx;yx;yx;yx];
Y=[Y;Y;Y;Y];
Y=[Y;Y;Y;Y];
figure(1);
imshow(Y); truesize(1,[256 256]);title('Image');
FY=fft2(Y);
FY1=fftshift(FY);
FY2=log(FY1+1);
FY3=FY2/max(max(FY2)) ;
figure(2);
imshow(abs(FY3)); truesize(2,[256 256]); title('Fourier Transform');



