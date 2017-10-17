% TASK 1
% S M KUMAIL RAZA
% DIP LAB6
% BESE 5A
% CMS ID 112210


img = imread('pears.png');
img = rgb2gray(img);
img = im2double(img);

% Gaussian
gimg = imnoise(img, 'gaussian',0,0.01);
subplot(2,3,1),imshow(gimg),title('Gaussian Noise');

% Poisson
pimg = imnoise(img, 'poisson');
subplot(2,3,2), imshow(pimg),title('Poisson Noise');

% Salt & Pepper
snpimg = imnoise(img, 'salt & pepper',0.1);
subplot(2,3,3), imshow(spimg),title('Salt & Pepper Noise');

% Speckle Noise
spimg = imnoise(img, 'speckle', 0.01);
subplot(2,3,4), imshow(spimg),title('Speckle Noise');

% Only Salt Noise
saltimg = Pepper_Or_Salt(img, 0.02, 2);
subplot(2,3,5), imshow(saltimg),title('Salt Noise');

% Only Pepper Noise
pepperimg = Pepper_Or_Salt(img, 0.02, 1);
subplot(2,3,6), imshow(pepperimg),title('Pepper Noise');




