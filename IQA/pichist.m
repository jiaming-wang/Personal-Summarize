%%图像分布直方图
clear all; clc;
GrayImage = imread('C:\Users\wang\Desktop\附加实验\新建文件夹\1-targets.png');  
% GrayImage = rgb2ycbcr(GrayImage);
% GrayImage = double(GrayImage(:,:,1));
% GrayImage = GrayImage+20*randn(size(GrayImage));

[rows , cols] = size(GrayImage);%得到图像矩阵的行、列数  
ZhiFang = zeros(1 , 256);%初始化一个矩阵，用来存储灰度图像中每个像素出现的频率  
for i = 0:255  
    ZhiFang(1 , i+1) = length(find(GrayImage == i)) / (rows * cols);%计算矩阵GrayImage中值与i相等的元素的个数  
end    
figure(1);  
bar(0:255 , ZhiFang , 'grouped');%根据bar绘制直方图 
xlim( [ 0, 255 ] );
ylim( [ 0, 0.014 ] );
ylabel('The proportion of Pixle');
xlabel('Pixle value');
