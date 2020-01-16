% MatLab Code for Splitting an Image into its RGB channels
% Created By : Sagar Suman, ECE , IIIT, Nagpur.
clc;clear;close all;

% Reading Test Image
test_image = imread('Lenna.png');

% Resizing Test Image to 256x256x3
test_image = imresize(test_image,[256 256]);

gray_test_image = rgb2gray(test_image);
subplot(251);
imshow(gray_test_image);
title('Original Image');

msb_bit_plane = bitget(gray_test_image, 8);
subplot(252);
imshow(logical(msb_bit_plane));
title('MSB bit plane Image');

seven_bit_plane = bitget(gray_test_image, 7);
subplot(253);
imshow(logical(seven_bit_plane));
title('Seventh bit plane Image');

sixth_bit_plane = bitget(gray_test_image, 6);
subplot(254);
imshow(logical(sixth_bit_plane));
title('Sixth bit plane Image');

fifth_bit_plane = bitget(gray_test_image, 5);
subplot(255);
imshow(logical(fifth_bit_plane));
title('Fifth bit plane Image');

fourth_bit_plane = bitget(gray_test_image, 4);
subplot(256);
imshow(logical(fourth_bit_plane));
title('Fourth bit plane Image');

third_bit_plane = bitget(gray_test_image, 3);
subplot(257);
imshow(logical(third_bit_plane));
title('Third bit plane Image');

second_bit_plane = bitget(gray_test_image, 2);
subplot(258);
imshow(logical(second_bit_plane));
title('Second bit plane Image');

lsb_bit_plane = bitget(gray_test_image, 1);
subplot(259);
imshow(logical(lsb_bit_plane));
title('LSB bit plane Image');

[rows cols] = size(gray_test_image);
seven_bits_test_image = zeros(rows,cols);

for ii = 1:rows
    for jj = 1:cols
        temp = bitget(gray_test_image(ii,jj), 2:1:8);
        temp2 = bi2de(temp);
        seven_bits_test_image(ii,jj) = temp2;
    end
end

subplot(2,5,10);
imshow(uint8(seven_bits_test_image));