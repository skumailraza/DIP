%LAB 7
%Character Seperaction
%S.M. Kumail Raza
%BESE 5A
%CMS: 112120

B = imread('text.png');
%Complementing the Image
B = imcomplement(B);

 
%Label the connected components
 CC = bwconncomp(B);
 disp(cc)
%Saving Cropped Components
   for i = 1:size(CC.NumObjects)
       comp = zeros(size(B));
       comp(CC.PixelIdxList{i}) = 1;
       comp = 1 - biggest;
       imwrite(comp,strcat('Components/comp', num2str(i)),'png');
   end