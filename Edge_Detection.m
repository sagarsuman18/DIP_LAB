% Created By : Sagar Suman, ECE , IIIT, Nagpur.
% Find the edges of "Lenna" Image using:
% a) DWT2 b) Canny c) Sobel
clc;clearvars;close all;

%% Part 1 : Import the Image

I_Leena = imread('Lenna.png');
I_Leena = rgb2gray(I_Leena);
figure(); title('Original Image'); imshow(I_Leena);

%% Part a : Edges using DWT2

[Leena_LL,Leena_LH,Leena_HL,Leena_HH] = dwt2(I_Leena,'haar'); %Decompose the Leena Image

figure();
subplot(221); imshow(uint8(Leena_LL)); title("Leena_LL");
subplot(222); imshow(uint8(Leena_LH)); title("Leena_LH - Edges");
subplot(223); imshow(uint8(Leena_HL)); title("Leena_HL - Edges");
subplot(224); imshow(uint8(Leena_HH)); title("Leena_HH - Edges");
%% Part b : Edges using Canny

Edge_Canny = edge(I_Leena,'canny');
figure();
imshow(Edge_Canny); title("Canny Edge Detector");

%% Part c : Edges using Sobel

Edge_Sobel = edge(I_Leena,'sobel');
figure();
imshow(Edge_Sobel); title("Sobel Edge Detector");