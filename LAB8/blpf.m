% LAB8
% S M KUMAIL RAZA
% BESE 5A
% CMS ID 112210

function res = blpf(im,thresh,n)

% im is the fourier transform of the image
% thresh is the cutoff circle radius
% n is the order of the filter

% Dimensions
[r,c]=size(im);
d0=thresh;

% Padding
d=zeros(r,c);
h=zeros(r,c);

% Calculating Distance
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2 + (j-(c/2))^2);
    end
end

% Creating Filter
for i=1:r
    for j=1:c
      h(i,j)=  1 / (1+ (d(i,j)/d0)^(2*n) ) ;
    end
end

% Multiplying with Image
res = h.*im;