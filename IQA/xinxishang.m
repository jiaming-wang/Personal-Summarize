%%图像信息熵
clear all; clc;
for TestImgIndex = 1:100

    fprintf('----------------------------------------------------------Processing  %d_test.jpg\n', TestImgIndex);

%% read ground truth of one test face i5mage
I= strcat('C:\Users\wang\Desktop\附加实验\通用图像\20\RNN\',num2str(TestImgIndex),'-outputs.png');
% I= strcat('C:\Users\wang\Desktop\附加实验\通用图像\20\vdsr\',num2str(TestImgIndex),'.bmp');
% I= strcat('C:\Users\wang\Desktop\附加实验\通用图像\5\vdsr\',num2str(TestImgIndex),'.bmp');
I =(imread(I));
% I=imread('C:\Users\wang\Desktop\附加实验\20noise\vdsr-c\1.bmp');
% I = rgb2ycbcr(I);
I = (I(:,:,1));
% I=shave(I,[16,16]);
% I=double(I);
% [C,R]=size(I);      %求图像的规格
% Img_size=C*R;       %图像像素点的总个数
% L=256;              %图像的灰度级
% H_img=0;
% 
