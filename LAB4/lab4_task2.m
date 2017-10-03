img2 = imread('pears.png')
img = rgb2gray(img2);
img = im2double(img);

imshow(img);

robert1 = [0,1;-1,0];
robert2 = [-1,0;0,1];
irobert1 = imfilter(img,robert1);
irobert2 = imfilter(img,robert2);
irobert = irobert1 + irobert2;

sobel = fspecial('Sobel');
isobel = imfilter(img, sobel)

prewit = fspecial('Prewitt');
iprewit = imfilter(img, prewit);

lap = fspecial('laplacian');
ilap = imfilter(img, lap);

subplot(2,2,1), imshow(isobel) , title('sobel');
subplot(2,2,2) , imshow(iprewit), title('prewit');
subplot(2,2,3), imshow(irobert), title('robert');
subplot(2,2,4), imshow(ilap), title('laplace');