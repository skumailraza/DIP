% Task 3
% S M KUMAIL RAZA
% DIP LAB5
% BESE 5A
% CMS ID 112210


img = imread('peppers.png');
img = rgb2gray(img);    % as per Sir's instructions

img2 = imgaussfilt(img, 11);

subplot(2,2,1), imshow(img), title('Original');
subplot(2,2,2), imshow(img2,[]), title('Blur');

img3 = imsubtract(img,img2);
subplot(2,2,3), imshow(img3,[]), title('Unsharp Masked 1')



img5 = imgaussfilt(img,20);

img6 = imsubtract(img,img5);

subplot(2,2,4), imshow(img6,[]), title('Unsharp Masked 2')
