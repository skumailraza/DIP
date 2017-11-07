%LAB8 Task A
% S M KUMAIL RAZA
% DIP LAB6
% BESE 5A
% CMS ID 112210

img = imread('Cap.jpg');
img = im2double(img);
F = fft2(img);
%F = abs(F);
F2 = fftshift(F);
Spectrum = log(1+F2);
figure, imshow(Spectrum,[]), title('Spectrum');

F3 = blpf(F2,20,1);
img2 = real(ifft2(ifftshift(F3)));
figure, imshow(img2,[]), title('Low Pass');

F4 = bhp(F2,10,4);
img3 = real(ifft2(ifftshift(F4)));
figure, imshow(img3,[]), title('High Pass');

