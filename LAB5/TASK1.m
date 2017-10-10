%TASK1: High Boost Filtering
% S M KUMAIL RAZA
% DIP LAB5
% BESE 5A
% CMS ID 112210

img = imread('cartoon.tif');
A = 0;
hbf1 = [0, -1, 0;-1, A+4, -1; 0, -1, 0];
hbf2 = [-1, -1, -1;-1, A+8, -1; -1, -1, -1];

out1 = imfilter(img, hbf1);
out2 = imfilter(img, hbf2);

A = 1;
hbf1 = [0, -1, 0;-1, A+4, -1; 0, -1, 0];
hbf2 = [-1, -1, -1;-1, A+8, -1; -1, -1, -1];

out3 = imfilter(img, hbf1);
out4 = imfilter(img, hbf2);

A = 2;
hbf1 = [0, -1, 0;-1, A+4, -1; 0, -1, 0];
hbf2 = [-1, -1, -1;-1, A+8, -1; -1, -1, -1];

out5 = imfilter(img, hbf1);
out6 = imfilter(img, hbf2);

A = 3;
hbf1 = [0, -1, 0;-1, A+4, -1; 0, -1, 0];
hbf2 = [-1, -1, -1;-1, A+8, -1; -1, -1, -1];
out7 = imfilter(img, hbf1);
out8 = imfilter(img, hbf2);

subplot(4,2,1), imshow(out1,[]), title('A=0')
subplot(4,2,2), imshow(out2,[]), title('A=0')
subplot(4,2,3), imshow(out3,[]), title('A=1')
subplot(4,2,4), imshow(out4,[]), title('A=1')
subplot(4,2,5), imshow(out5,[]), title('A=2')
subplot(4,2,6), imshow(out6,[]), title('A=2')
subplot(4,2,7), imshow(out7,[]), title('A=3')
subplot(4,2,8), imshow(out8,[]), title('A=3')




%TASK1 Part b
figure,subplot(2,3,1), imshow(out7,[]), title('A=3')
subplot(2,3,2), imshow(out8,[]), title('A=3')
img3 = img.*3;
subplot(2,3,3), imshow(img3,[]), title('IMG * 3')
img4 = img3 - out7;
img5 = img3 - out8;
subplot(2,3,4), imshow(img4,[]), title('Difference 1')
subplot(2,3,5), imshow(img5,[]), title('Difference 2')






