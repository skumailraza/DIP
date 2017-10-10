% Task2 A
% S M KUMAIL RAZA
% DIP LAB5
% BESE 5A
% CMS ID 112210

img = imread('cartoon.tif');
h = fspecial('log',[7 7],1.0);

img2 = imfilter(img, h);

subplot(3,3,1), imshow(img2,[]), title('LoG Filter with Sigma 1.0');

% The output image will show sharp edges where the pixel inetensities, i.e
% the smaller edges like face curves will be detected as the standatd deviation is
% 1.

% Task2 B

img3 = img - img2;
subplot(3,3,2), imshow(img3,[]), title('Combined Image');

% Task2 C
h = fspecial('log',[7 7],0.1);
img4 = imfilter(img, h);
img5 = img - img4;
subplot(3,3,3), imshow(img,[]), title('Original');
subplot(3,3,4), imshow(img5,[]), title('LoG filter with Sigma 0.1 Combined')

% Task2 D
% 2 sigma values already shown.
% 2 more values are taken here

h1 = fspecial('log',[7 7],0.4); % sigma = 0.4
h2 = fspecial('log',[7 7],0.8); % sigma = 0.8

img6 = imfilter(img, h1);
img7 = img - img6;

img8 = imfilter(img, h2);
img9 = img - img8;

subplot(3,3,5), imshow(img7,[]), title('Sigma 0.4');
subplot(3,3,6), imshow(img9,[]), title('Sigma 0.8');



