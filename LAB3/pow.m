% Kumail Raza 112120
% BESE 5
% DIP LAB3
% Power Equalization

im = imread('cameraman.tif');

im2 = im2double(im);
im2 = power(im2,1.5);

imshow(im2);
