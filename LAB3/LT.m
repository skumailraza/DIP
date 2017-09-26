% Kumail Raza 112120
% BESE 5
% DIP LAB3
% Linear Transformation

I = imread('cameraman.tif');

J = I*1.5;

K = J*1.5;

subplot(1,3,1), imshow(I)
subplot(1,3,2), imshow(J)
subplot(1,3,3), imshow(K)