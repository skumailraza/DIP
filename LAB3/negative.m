% Kumail Raza 112120
% BESE 5
% DIP LAB3
% Negative Image

I = imread('cameraman.tif');
J = 255 - I;

subplot(1,2,1), imshow(I)
subplot(1,2,2), imshow(J)