% LAB8
% S M KUMAIL RAZA
% BESE 5A
% CMS ID 112210

function res = bhp(im,thresh,n)

% im is the fourier transform of the image
% thresh is the cutoff circle radius

% Dimensions of Image
[r,c]=size(im);
d0=thresh;

% Padding
d=zeros(r,c);
h=zeros(r,c);

% Finding Distances
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2 + (j-(c/2))^2);
    end
end

% Creating filter
for i=1:r
    for j=1:c
      h(i,j)=  1 / (1+ (d0/d(i,j))^(2*n) ) ;
    end
end

% Multiplying image with filter
res = h.*im;