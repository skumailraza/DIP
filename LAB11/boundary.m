% LAB 11
% DIP 
% KUMAIL RAZA
% BESE 5A
% CMS: 112120

I = imread('blobs.png');
figure, imshow(I), title('Original image');
se   =   strel('square',3);
I_ero  =  imerode(I,se);
I_bou   =   imsubtract(I,I_ero);
figure, imshow(I_bou), title('Boundary Extraction');  
I_perim   =   bwperim(I,4); 
figure, imshow(I_perim), title('Boundary using bwperim');
diff = I_bou - I_perim;
figure, imshow(diff), title('Difference Image');

% As evident from the difference Image they are exactly the same.

% Four Connected:
% Some artifacts are left in the difference image as I_bou will have more
% connected pixels as compared to I_perim.

I_thin   =   bwmorph(I,'thin',5);
I_thin15 =  bwmorph(I,'thin',inf);

figure, imshow(I_thin), title('Thinning, 5 iterations');
figure, imshow(I_thin15), title('Thinning, 15 iterations');
%Question 6:
%Thinning doesn't give you anychange in the boundries but it does have
%difference in the round disk in the middle.

I_skel   =   bwmorph(I,'skel',Inf);
figure, imshow(I_skel), title('Skeleton of image');

%Question 7:
% Skeleton gives a better image as the right most artifact has a better
% skeleton in that.