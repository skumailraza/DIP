% Kumail Raza 112120
% BESE 5
% DIP LAB3
% LOG Equalization

im = imread('cameraman.tif');

im2 = im2double(im);

im2 = 10*log10(1+im2);

imshow(im2);
