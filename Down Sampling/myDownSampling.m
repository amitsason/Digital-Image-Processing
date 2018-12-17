function  [c] = myDownSampling( I, k )
%myDownSampling recieves a grayscale image I and 
%down sample (take the minimal value) 
%every kxk matrix in I then take a k stride in each direction
[m,n] = size(I);
rows = floor(m/k); %number of rows in the downsampled image
cols = floor(n/k); %number of columns in the downsampled image
b = [];
c = [];
for i = 1:rows
    for j = 1:cols
          maxval = min(min(I([(k*i-(k-1)) k*i],[(k*j-(k-1)) k*j])));
          b = [b maxval];
    end
    c = [c; b];
    b = []; 
end

end

