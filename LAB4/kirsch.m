function f = kirsch()
img = imread('peppers.png');
img2 = kirschf(img);
subplot(1,2,1), imshow(img);
subplot(1,2,2), imshow(img2);
end

function y=kirschf(x)
   
    x = rgb2gray(x);
    x=im2double(x);

    % 8 kernels for kirsch
    g1=[-1,0,1; -2,0,2; -1,0,1];
    g2=[-2,-1,0; -1,0,1; 0, 1, 2];
    g3=[-1,-2,-1; 0,0,0; 1,2,1];
    g4=[0,-1,-2; 1,0,-1; 2,1,0];
    b = -1;
    g5 = b*g1;
    g6 = b*g2;
    g7 = b*g3;
    g8 = b*g4;
  
    % Applying each kernel to image
    x1=imfilter(x,g1,'replicate');
    x2=imfilter(x,g2,'replicate');
    x3=imfilter(x,g3,'replicate');
    x4=imfilter(x,g4,'replicate');
    x5=imfilter(x,g5,'replicate');
    x6=imfilter(x,g6,'replicate');
    x7=imfilter(x,g7,'replicate');
    x8=imfilter(x,g8,'replicate');
    
    % Max of each output
    
    y1=max(x1,x2);
    y2=max(y1,x3);
    y3=max(y2,x4);
    y4=max(y3,x5);
    y5=max(y4,x6);
    y6=max(y5,x7);
    y7=max(y6,x8);
    y=y7;   % final image
end
