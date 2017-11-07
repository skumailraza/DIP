% LAB8TASK C
% S M KUMAIL RAZA
% BESE 5A
% CMS ID 112210

img = imread('cameraman.tif');
IMG = fftshift(fft2(double(img)));  % DFT Conversion
LF_IMG = glp(IMG,50);    % function for Gaussian Low Pass Attached
lf_img = real(ifft2(ifftshift(LF_IMG)));  % iDFT Conversion
figure, imshow(f_img,[]), title('Gaussian Low Pass');

% function for Gaussian High Pass Attached
HF_IMG = ghp(IMG,50);
hf_img = real(ifft2(ifftshift(HF_IMG)));
figure, imshow(hf_img,[]), title('Gaussian High Pass');


