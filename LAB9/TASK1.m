% LAB09 TASKS
% KUMAIL RAZA
% BESE 5A
% CMS ID: 112120

img = imread('tools.gif');
img = imbinarize(img);
%TASK 1
%Structuring Element
se = [1,0,1; 0,1,0; 1,0,1];
%Erosion
eroded = imerode(img,se);
%Dilation
dialated = imdilate(img,se);
%Opening
opened = imopen(img,se);
%Closing
closed = imclose(img, se);

subplot(2,3,1), imshow(eroded,[]),title('eroded');
subplot(2,3,2), imshow(dialated,[]),title('dialated');
subplot(2,3,3), imshow(opened,[]),title('opened');
subplot(2,3,4), imshow(closed,[]),title('closed');

% Are any results satisfying?
% Opened image gives somewhat satisfying results. Eroded keeps the pepper
% noise, dilated keeps the salt noise, closed still retains the salt noise.

% TASK 2
%Open Closed
open_closed = imclose(opened, se);
figure,
subplot(2,2,1), imshow(img,[]),title('Original');
subplot(2,2,2), imshow(open_closed,[]),title('Open Closed');

%Closed Open
closed_open = imopen(closed,se);

subplot(2,2,3), imshow(closed_open,[]),title('Closed Open');

% What do you observe?
% Open_closed closed_open get rid of the both salt and pepper noise,
% however it shrinks/expands the pixels a bit, i.e sizes of the tools
% decrease/increase.

% TASK 3
%Hole Filled
CH = imfill(img, 'holes');
res = CH - img;
output = imopen(res,se);
figure,
subplot(2,2,1), imshow(CH,[]), title('Close Holes');
subplot(2,2,2), imshow(output,[]),title('CH Opened');
CH_OPEN = imopen(CH,se);

% Punched Image
finaloutput = CH_OPEN - output;
subplot(2,2,3), imshow(finaloutput,[]), title('Punch Final Output');

% Comments on Task 3:
% Close holes operation fills all the holes in the image.
% The Close Holes opened image is just the holes that we filled.
% Punch final output literally punch those holes out in the close holes
% image.

% TASK 4
marker = imopen(img,se);
mask = imclose(img,se);

% Reconstructed Image
recons = imreconstruct(marker, mask);

subplot(2,2,4), imshow(recons,[]), title('TASK 4 Reconstructed');

diff = recons - finaloutput;

figure, 
imshow(diff,[]),title('Difference Image');

% Difference is still observed in the image as evident from the plotted
% difference image. They are NOT identical.
