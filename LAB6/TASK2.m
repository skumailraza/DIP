% TASK 2
% S M KUMAIL RAZA
% DIP LAB6
% BESE 5A
% CMS ID 112210


img = imread('cameraman.tif');
img = im2double(img);

% Gaussian
gimg = imnoise(img, 'gaussian',0,0.01);
subplot(2,4,1),imshow(gimg),title('Gaussian Noise');

% Poisson
pimg = imnoise(img, 'poisson');
subplot(8,2,2), imshow(pimg),title('Poisson Noise');

% Salt & Pepper
snpimg = imnoise(img, 'salt & pepper',0.1);
subplot(2,3,3), imshow(snpimg),title('Salt & Pepper Noise');

% Speckle Noise
spimg = imnoise(img, 'speckle', 0.01);
subplot(2,3,4), imshow(spimg),title('Speckle Noise');

% Only Salt Noise
saltimg = Pepper_Or_Salt(img, 0.02, 2);
subplot(2,3,5), imshow(saltimg),title('Salt Noise');

% Only Pepper Noise
pepperimg = Pepper_Or_Salt(img, 0.02, 1);
subplot(2,3,6), imshow(pepperimg),title('Pepper Noise');

% Arithmatic
meanfilter = ones(7)./49;
gm_out = imfilter(gimg, meanfilter);
subplot(2,3,1), imshow(gm_out),title('Impact on Gaussian');

pm_out = imfilter(pimg, meanfilter);
subplot(2,3,2), imshow(pm_out),title('Impact on Poisson Noise');

snpm_out = imfilter(snpimg, meanfilter);
subplot(2,3,3), imshow(snpm_out),title('Impact on Salt & Pepper Noise');

sp_out = imfilter(spimg, meanfilter);
subplot(2,3,4), imshow(sp_out),title('Impact on Speckle Noise');

salt_out = imfilter(saltimg, meanfilter);
subplot(2,3,5), imshow(salt_out),title('Impact on Salt Noise');

pepper_out = imfilter(pepperimg, meanfilter);
subplot(2,3,6), imshow(pepper_out),title('Impact on Pepper Noise');


% Geometric
figure
gimg_geo_mean = imfilter(log(gimg), 3, 'replicate');
gimg_geo_mean = exp(gimg_geo_mean);
gimg_geo_mean = gimg_geo_mean.^(1/numel(3));
subplot(2,3,1),imshow(gimg_geo_mean,[]),title('Gaussian ');


pimg_geo_mean = imfilter(log(pimg), 3, 'replicate');
pimg_geo_mean = exp(pimg_geo_mean);
pimg_geo_mean = pimg_geo_mean.^(1/numel(3));
subplot(2,3,2),imshow(pimg_geo_mean,[]),title('Poisson ');

snpimg_geo_mean = imfilter(log(snpimg), 3, 'replicate');
snpimg_geo_mean = exp(snpimg_geo_mean);
snpimg_geo_mean = snpimg_geo_mean.^(1/numel(3));
subplot(2,3,3),imshow(snpimg_geo_mean,[]),title('Salt & Pepper ');

spimg_geo_mean = imfilter(log(spimg), 3, 'replicate');
spimg_geo_mean = exp(spimg_geo_mean);
spimg_geo_mean = spimg_geo_mean.^(1/numel(3));
subplot(2,3,4),imshow(spimg_geo_mean,[]),title('Poisson ');

saltimg_geo_mean = imfilter(log(saltimg), 3, 'replicate');
saltpimg_geo_mean = exp(saltimg_geo_mean);
saltpimg_geo_mean = saltpimg_geo_mean.^(1/numel(3));
subplot(2,3,5),imshow(saltimg_geo_mean,[]),title('Poisson ');

pepperimg_geo_mean = imfilter(log(pepperimg), 3, 'replicate');
pepperimg_geo_mean = exp(pepperimg_geo_mean);
pepperimg_geo_mean = pepperimg_geo_mean.^(1/numel(3));
subplot(2,3,6),imshow(pepperimg_geo_mean,[]),title('Poisson ');


% Harmonic mean
figure
gout = Harmonic_mean_filter(gimg, 3);
subplot(2,3,1),imshow(gout,[]),title('Harmonic Gaussian ');

pout = Harmonic_mean_filter(pimg, 3);
subplot(2,3,2),imshow(pout,[]),title('Poisson ');

snpout = Harmonic_mean_filter(snpimg, 3);
subplot(2,3,3),imshow(snpout,[]),title('Salt & Pepper ');

spout = Harmonic_mean_filter(spimg, 3);
subplot(2,3,4),imshow(spout,[]),title('Speckle ');

saltout = Harmonic_mean_filter(saltimg, 3);
subplot(2,3,5),imshow(saltout,[]),title('Salt  ');

pepperout = Harmonic_mean_filter(pepperimg, 3);
subplot(2,3,6),imshow(pepperout,[]),title('Pepper  ');
% 
% ContraHarmonic -1
figure
gout = ContraHarmonicMeanFilter(gimg,3,-1);
pout = ContraHarmonicMeanFilter(pimg,3,-1);
snpout = ContraHarmonicMeanFilter(snpimg,3,-1);
spout = ContraHarmonicMeanFilter(spimg,3,-1);
saltout = ContraHarmonicMeanFilter(saltimg,3,-1);
pepperout = ContraHarmonicMeanFilter(pepperimg,3,-1);

subplot(2,3,1),imshow(gout,[]),title('Contra Harmonic -1 Gaussian  ');

subplot(2,3,2),imshow(pout,[]),title('Poisson  ');

subplot(2,3,3),imshow(snpout,[]),title('Salt & Pepper  ');

subplot(2,3,4),imshow(spout,[]),title('Speckle  ');

subplot(2,3,5),imshow(saltout,[]),title('Salt   ');
subplot(2,3,6),imshow(pepperout,[]),title('Pepper   ');

% ContraHarmonic 1
figure
gout = ContraHarmonicMeanFilter(gimg,3,1);
pout = ContraHarmonicMeanFilter(pimg,3,1);
snpout = ContraHarmonicMeanFilter(snpimg,3,1);
spout = ContraHarmonicMeanFilter(spimg,3,1);
saltout = ContraHarmonicMeanFilter(saltimg,3,1);
pepperout = ContraHarmonicMeanFilter(pepperimg,3,1);

subplot(2,3,1),imshow(gout,[]),title('Contra Harmonic 1 Gaussian  ');

subplot(2,3,2),imshow(pout,[]),title('Poisson  ');

subplot(2,3,3),imshow(snpout,[]),title('Salt & Pepper  ');

subplot(2,3,4),imshow(spout,[]),title('Speckle  ');

subplot(2,3,5),imshow(saltout,[]),title('Salt   ');
subplot(2,3,6),imshow(pepperout,[]),title('Pepper   ');


% Min filter
figure
gout = ordfilt2(gimg,1,ones(3,3));
pout = ordfilt2(pimg,1,ones(3,3));
snpout = ordfilt2(snpimg,1,ones(3,3));
spout = ordfilt2(spimg,1,ones(3,3));
saltout = ordfilt2(saltimg,1,ones(3,3));
pepperout = ordfilt2(pepperimg,1,ones(3,3));

subplot(2,3,1),imshow(gout,[]),title('Min Filter: Gaussian  ');

subplot(2,3,2),imshow(pout,[]),title('Poisson  ');

subplot(2,3,3),imshow(snpout,[]),title('Salt & Pepper  ');

subplot(2,3,4),imshow(spout,[]),title('Speckle  ');

subplot(2,3,5),imshow(saltout,[]),title('Salt   ');
subplot(2,3,6),imshow(pepperout,[]),title('Pepper   ');

% Max Filter
figure
gout = ordfilt2(gimg,9,ones(3,3));
pout = ordfilt2(pimg,9,ones(3,3));
snpout = ordfilt2(snpimg,9,ones(3,3));
spout = ordfilt2(spimg,9,ones(3,3));
saltout = ordfilt2(saltimg,9,ones(3,3));
pepperout = ordfilt2(pepperimg,9,ones(3,3));

subplot(2,3,1),imshow(gout,[]),title('Max Filter: Gaussian  ');

subplot(2,3,2),imshow(pout,[]),title('Poisson  ');

subplot(2,3,3),imshow(snpout,[]),title('Salt & Pepper  ');

subplot(2,3,4),imshow(spout,[]),title('Speckle  ');

subplot(2,3,5),imshow(saltout,[]),title('Salt   ');
subplot(2,3,6),imshow(pepperout,[]),title('Pepper   ');

% Median Filter
figure
gout = ordfilt2(gimg,5,ones(3,3));
pout = ordfilt2(pimg,5,ones(3,3));
snpout = ordfilt2(snpimg,5,ones(3,3));
spout = ordfilt2(spimg,5,ones(3,3));
saltout = ordfilt2(saltimg,5,ones(3,3));
pepperout = ordfilt2(pepperimg,5,ones(3,3));

subplot(2,3,1),imshow(gout,[]),title('Medain Filter: Gaussian  ');

subplot(2,3,2),imshow(pout,[]),title('Poisson  ');

subplot(2,3,3),imshow(snpout,[]),title('Salt & Pepper  ');

subplot(2,3,4),imshow(spout,[]),title('Speckle  ');

subplot(2,3,5),imshow(saltout,[]),title('Salt   ');
subplot(2,3,6),imshow(pepperout,[]),title('Pepper  ');


