%DIP LAB10 Task2
%KUMAIL RAZA
%CMS ID: 112120


for i = 1: 5
name = strcat('0',num2str(i),'_test.tif');

% Preprocessing
img = imread(name);
img = rgb2gray(img);
img = im2double(img);
img = imcomplement(img);

% Disk SEs
se1 = strel('disk',2)
se2 = strel('disk',4)
se3 = strel('disk',6)
se4 = strel('disk',8)

% Top Hat
IM1 = imtophat(img, se1);
IM2 = imtophat(img, se2);
IM3 = imtophat(img, se3);
IM4 = imtophat(img, se4);

% Final Image
tophat = IM1 + IM2 + IM3 + IM4;

imshow(1 - tophat,[]);
imwrite(1 - tophat,strcat('output2\output',num2str(i),'.png'));
end