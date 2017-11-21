%DIP LAB10 Task1
%KUMAIL RAZA
%CMS ID: 112120

for i = 1: 5
name = strcat('0',num2str(i),'_test.tif');
 
% Preprocessing
img = imread(name);
img = rgb2gray(img);
img = im2double(img);
img = imcomplement(img);
leng = 10;

% Rotated Structuring elemets
se1 = strel('line',leng,30);
se2 = strel('line',leng,60);
se3 = strel('line',leng,90);
se4 = strel('line',leng,120);
se5 = strel('line',leng,150);
se6 = strel('line',leng,180);

% Applying top hat
IM1 = imtophat(img, se1);
IM2 = imtophat(img, se2);
IM3 = imtophat(img, se3);
IM4 = imtophat(img, se4);
IM5 = imtophat(img, se5);
IM6 = imtophat(img, se6);


% Final Image
tophat = IM1 + IM2 + IM3 + IM4 + IM5 + IM6;

imshow(1 - tophat,[]);
imwrite(1 - tophat,strcat('output1\output',num2str(i),'.png'));

end