I = imread('peppers.png');
avgf3 = ones(3)./9; % 3x3 avg filter
avgf5 = ones(5)./25; % 5x5 avg filter
avgf15 = ones(15)./225; % 15x15 filter
avgf35 = ones(35)./1225; % 35x35 filter

I2 = imfilter(I,avgf3);
subplot(3,2,1), imshow(I);
subplot(3,2,2), imshow(I2);

I3 = imfilter(I,avgf5);
subplot(3,2,3), imshow(I3);

I4 = imfilter(I,avgf15);
subplot(3,2,4), imshow(I4);

I5 = imfilter(I, avgf35);
subplot(3,2,5), imshow(I5);

%Answer to question 1:
% Increasing the size of the filter increases the blur on the image since.
% The filter uses the neighbouring filters multiple times thus creating a
% greater effect of average on each pixel. Thus the greater effect of blur. 
