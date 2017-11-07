% LAB8TASK B
% S M KUMAIL RAZA
% BESE 5A
% CMS ID 112210

img = imread('cameraman.tif');
img = im2double(img);

F = fftshift(fft2(img)); % DFT Conversion

min_val = min(min(abs(F)));
max_val = max(max(abs(F)));

fprintf('Min Value: %i',min_val);
fprintf('\nMax Value: %i',max_val);

% Min Value: 4.704670e-02
% Max Value: 3.051266e+04

% Comparing IdealLP and ButterworthLP
% The idealLPF yields cicular patterns on the image while blurring.
% The ButterworthLPF yields a more smoother image with none of these
% patterns.

img_lp = ideallp(img, 20);  % Ideal Low Pass filter function attached
imshow(img_lp), title('Ideal Low Pass');

F_blp = blpf(F,20,3);   % Butterworth Low Pass filter attached
img_blp = real(ifft2(ifftshift(F_blp)));
figure, imshow(img_blp,[]), title('Butterworth Low Pass');
