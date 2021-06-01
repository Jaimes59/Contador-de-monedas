close all
I=imread('monedas 3.jpg');
A = rgb2gray(I);
umb=graythresh(A);
B = im2bw(A,umb); %umbral automatico
C=~B;
S = strel('disk',10);
B_erode = imdilate(C,S);
B2 = imfill (B_erode,'holes');
% 
% figure, imshow(A);
% figure, imshow(B);
% figure, imshow(C);
% figure, imshow(B_erode);
figure, imshow(B2);
[L, n] = bwlabel(double(B2)); %fig9.16 
propiedades = regionprops(L,'Area','centroid');

contador = 0;
figure, imshow(I);
for k=1:size(propiedades,1)
    
    cent = propiedades(k).Centroid
    x=cent(1);y=cent(2);
    area = propiedades(k).Area
    vec(k)=area
    a=num2str(area)
    if propiedades(k).Area > 175000
        text(x-20,y,a)
        text(x-20,y-50,'1000')
        contador=contador+1000
    end    
    
     if propiedades(k).Area > 130000 & propiedades(k).Area < 152000
        text(x-20,y,a)
        text(x-20,y-50,'200')
        contador=contador+200
     end  
    
     
     if propiedades(k).Area > 152000 & propiedades(k).Area < 175000
        text(x-20,y,a)
        text(x-20,y-50,'500')
        contador=contador+500
     end  
    
     
     if propiedades(k).Area > 110000 & propiedades(k).Area < 130000
        text(x-20,y,a)
        text(x-20,y-50,'100')
        contador=contador+100
     end  
    if propiedades(k).Area > 60000 & propiedades(k).Area < 110000
        text(x-20,y,a)
        text(x-20,y-50,'50')
        contador=contador+50
    end 
 end
  title(['Dinero total: ',num2str(contador),'pesos'])
  
%   for k=1:1:n
%     figure(100)
%     imagesc(L == k) 
%     title(num2str(k))
%     
% end