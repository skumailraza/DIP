% LAB 11
% DIP 
% KUMAIL RAZA
% BESE 5A
% CMS: 112120

 SE1 = [0 0 0 0 0;
        0 0 0 0 0; 
        0 1 1 0 0; 
        0 0 1 0 0; 
        0 0 0 0 0];
    
 SE2 = [0 0 0 0 0;
        1 1 1 1 0; 
        0 0 0 1 0; 
        0 0 0 1 0; 
        0 0 0 0 0];
    
    I = imread('blobs.png');
    figure, imshow(I), title('Original Image');
    I_hm    =    bwhitmiss(I,SE1,SE2);
    figure, imshow(I), title('Original Image');
    figure, imshow(I_hm), title('Hit-or-miss operation');
    
    %Question 1:
    %It gives us the top right corner pixels of the artifacts in the image.
    
    SE3 = [0 0 0 0 0;
           0 1 0 0 0; 
           0 1 0 0 0; 
           0 1 1 1 1; 
           0 0 0 0 0];
    SE4 = [ 0 0 0 0 0;
            0 0 1 0 0; 
            0 0 1 1 0; 
            0 0 0 0 0; 
            0 0 0 0 0];
      I = imread('blobs.png');
    figure, imshow(I), title('Original Image');
    I_hm    =    bwhitmiss(I,SE3,SE4);
    figure, imshow(I), title('Original Image');
    figure, imshow(I_hm), title('Hit-or-miss operation');

    %Question 2:
    %SE3 and SE4 above will be used to get the bottom right corners.
    
    
    %Question 3:
    %If the structuring elements have elements in common and their sum
    %comes out to be zero, then it will not work because, 1 + (-1) = 0 so
    %the output will be zero. But if somehow the placeholder value is
    %changed so that the sum will not be zero like 2 + (-1) = 1, this can
    %work.
    
    