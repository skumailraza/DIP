I = imread('peppers.png');
wavg1 = [1,2,1;2,4,2;1,2,1]./16;
wavg2 = [1,2,1;2,0,2;1,2,1]./12;

out1 = imfilter(I,wavg1);
out2 = imfilter(I,wavg2);

subplot(2,2,1), imshow(out1), title('1st filter');
subplot(2,2,2), imshow(out2), title('2nd filter');
