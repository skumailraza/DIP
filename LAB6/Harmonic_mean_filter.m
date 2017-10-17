function [Im]=Harmonic_mean_filter(Im,Mask)
S_=size(Im);

%Mask=;
for i=1:S_(1)
    j=1;
    while(j<S_(2)-Mask)
        T(1:Mask)=Im(i,j:j+(Mask-1));
        Data=harmmean(T);
        Im(i,j+1)=Data;
        j=j+1;
    end;
end;
%imshow(uint8(Im));
end