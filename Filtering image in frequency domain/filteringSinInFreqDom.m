%---------------------reading and adjusting the Image----------------------------

J = imread('lenna.png');
J = imresize(J,[256 256]);
Q = J;
J = double(J);
J=(1/255)*J;
%----------------------------------------------------------------------
%---------------------adding noise to Image----------------------------
u0=80*pi/256;
v0=120*pi/256;
r=0:255;
c=0:255;
[C,R]=meshgrid(c,r);
Y=(sin(u0*R+v0*C)+1)/2;
J1=J+Y;
J1=(J1/2);
%----------------------------------------------------------------------

%---------------------Transforming image to frequency domain----------------------------

F=fft2(J1);
F2=fftshift(F);
F3=log(F2+1);
F4=abs(F3);
F5=F4/(max(max(F4)));       
%----------------------------------------------------------------------
%---------------------plots----------------------------

figure(1);
subplot(1, 3, 1);
imshow(Q);title('Original Image');
subplot(1, 3, 2);
imshow(J1);title('Disturbed Image');
subplot(1, 3, 3);
imshow(F5); title('Image after FFT2');
%----------------------------------------------------------------------
%---------------------filtering the noise----------------------------

[M,N]=find(F5>0.9);
F2(M(1),N(1))=0;
F2(M(3),N(3))=0; 
F5(M(1),N(1))=0;
F5(M(3),N(3))=0; 
%----------------------------------------------------------------------
%---------------------Transforming back to image domain----------------------------

F=fftshift(F2);
J2=ifft2(F);
minJ2=min(min(J2));
maxJ2=max(max(J2));
J2=(J2-minJ2)/(maxJ2-minJ2);  %enhancing contrast linearly
%----------------------------------------------------------------------
%---------------------plots----------------------------

figure(2)
subplot(1, 2, 1);
imshow(F5); title('filtered mage in freq');
subplot(1, 2, 2);
imshow(J2); title('Image after Filtering');
%----------------------------------------------------------------------
%---------------------calculating the lost information----------------------------

E =(J-J2);
minE=min(min(E));
maxE=max(max(E));
E=(E-minE)/(maxE-minE);
figure(4);
imshow(E); title('Data loss');
%----------------------------------------------------------------------


