% TASK 4 A
% S M KUMAIL RAZA
% DIP LAB5
% BESE 5A
% CMS ID 112210

img = imread('lenaTest4.jpg');
%imtool(img)
h = fspecial('sobel');  %for horizontal gradient
h1 = h';    %for vertical gradient

img2 = imfilter(img,h1);
img3 = imfilter(img,h);
imshowpair(img2,img3,'montage')

%TASK 4 B
[Gx, Gy] = imgradientxy(img);
figure,imshowpair(Gx,Gy,'montage')

% In the previous example we used the 'Sobel' filter in both directions
% which returns the edges (gradient) so the image shown is somewhat black
% but in the second task, it calculates gradient implicitly so the image is
% somewhat gray. Although 