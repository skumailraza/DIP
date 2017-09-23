% KUMAIL RAZA
% BESE 5
% DIP LAB 2
% TASK 3

A = imread('lab2-task3-image.jpg');
% RED TO YELLOW
red = A(:,:,1); green = A(:,:,2); blue = A(:,:,3);

%// Change here
mred = red >= 150 & red <= 255; 
mgreen = green >= 0 & green <= 100; 
mblue = blue >= 0 & blue <= 100;

%// Back to before
final_mask = mred & mgreen & mblue;
red(final_mask) = 255; green(final_mask) = 255; blue(final_mask) = 0;
A = cat(3, red, green, blue);

% BLUE TO MAGENTA
red = A(:,:,1); green = A(:,:,2); blue = A(:,:,3);
mred = red >= 0 & red <= 100; 
mgreen = green >= 0 & green <= 100; 
mblue = blue >= 150 & blue <= 255;

%// Back to before
final_mask = mred & mgreen & mblue;
red(final_mask) = 255; green(final_mask) = 0; blue(final_mask) = 255;
A = cat(3, red, green, blue);

% GREEN TO CYAN
red = A(:,:,1); green = A(:,:,2); blue = A(:,:,3);
mred = red >= 0 & red <= 50; 
mgreen = green >= 150 & green <= 255; 
mblue = blue >= 0 & blue <= 100;

%// Back to before
final_mask = mred & mgreen & mblue;
red(final_mask) = 0; green(final_mask) = 255; blue(final_mask) = 255;
A = cat(3, red, green, blue);

imshow(A);

