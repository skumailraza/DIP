% LAB8
% S M KUMAIL RAZA
% BESE 5A
% CMS ID 112210

function res = ideallp(f,P)
% Ideal Low Pass filter using MeshGrid

% Getting the size of Original Image
[M,N]=size(f);

% Converting to DFT
F=fft2(double(f));

% Initializing
u=0:(M-1);
v=0:(N-1);

% Finding Indices
idx=find(u>M/2);
u(idx)=u(idx)-M;
idy=find(v>N/2);
v(idy)=v(idy)-N;

% Creating a mesh of the filter
[V,U]=meshgrid(v,u);
% Calculating Distance
D=sqrt(U.^2+V.^2);

% Adding filter values
H=double(D<=P);
% Miltiplying with Image
G=H.*F;
% Inverse Transform
g=real(ifft2(double(G)));
res = g;
end