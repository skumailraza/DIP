%Bit Plane Slicing
% TASK1
% LAB 11
% DIP 
% KUMAIL RAZA
% BESE 5A
% CMS: 112120

img1 = imread('output4.png');

img = imcomplement(img1);

bit5 = bitget(img,5);
bit6 = bitget(img,6);
bit7 = bitget(img,7);
bit8 = bitget(img,8);

final = bit8 | bit7 | bit6;
figure, imshow(final,[]), title('LABTASK1 OUTPUT');


% TASK2
img = adapthisteq(img);
bit6 = bitget(img,6);
bit7 = bitget(img,7);
bit8 = bitget(img,8);
final2 = bit8 | bit7% | bit6;
figure, imshow(final2,[]), title('LABTASK2 OUTPUT');
figure;
%imshow(bit7,[]);


%AHE enhances the gray levels which were previously not visible, therefore,
%it creates noise in the image.


