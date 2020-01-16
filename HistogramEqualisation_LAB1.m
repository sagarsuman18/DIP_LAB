% MatLab Code for Histogram Equalisation
% Created By : Sagar Suman, ECE , IIIT, Nagpur.
clc; clear all; close all;
OIm=imread('lenna.png');

NIm=rgb2gray(OIm);


numofpixels=size(NIm,1)*size(NIm,2);



HIm=uint8(zeros(size(NIm,1),size(NIm,2)));

freq=zeros(256,1);

probf=zeros(256,1);

probc=zeros(256,1);

cum=zeros(256,1);

output=zeros(256,1);


%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.


for i=1:size(NIm,1)

    for j=1:size(NIm,2)

        value=NIm(i,j);

        freq(value+1)=freq(value+1)+1;

        probf(value+1)=freq(value+1)/numofpixels;

    end

end


sum=0;

no_bins=255;


%The cumulative distribution probability is calculated. 

for i=1:size(probf)

   sum=sum+freq(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(NIm,1)

    for j=1:size(NIm,2)

            HIm(i,j)=output(NIm(i,j)+1);

    end

end

figure

subplot(1,2,1)
imshow(NIm);
title('Original Image');

subplot(1,2,2)
imshow(HIm);
title('After Histogram equalization');

