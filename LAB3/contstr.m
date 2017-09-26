% Kumail Raza 112120
% BESE 5
% DIP LAB3
% Contrast Stretching

X = imread('cameraman.tif'); %reading a grayscale image
X2 = X;
subplot(2,2,1)
imshow(X);
title('Original Image')
a = min(X(:));  %minimum pixel of image X
b = max(X(:)); %maximum pixel of image X 
X= (X-a).*(255/(b-a)); %just using the formula above
subplot(2,2,2)
imshow(X);
title('Contrast Streached Image')
h = histogram(X);
subplot(2,2,3)
imshow(X);

%percentile method
a = prctile(h,5);   % 5th percentile  
b = prctile(h,95);  % 95th percentile

X2= (X2-a).*(255/(b-a)); %just using the formula above
subplot(2,2,4), imshow(X2);

