% LAB8
% S M KUMAIL RAZA
% BESE 5A
% CMS ID 112210

function res = ghp(im,thresh)

% im is the fourier transform of the image
% thresh is the cutoff circle radius

[r,c]=size(im);
d0=thresh;

% Padding
d=zeros(r,c);
h=zeros(r,c);

% Calculate Distance
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2 + (j-(c/2))^2);
    end
end

% Create Filter
for i=1:r
    for j=1:c
      h(i,j)=1- exp ( -( (d(i,j)^2)/(2*(d0^2)) ) );
    end
end

% Multiply Image and Filter
res = h.*im;
end