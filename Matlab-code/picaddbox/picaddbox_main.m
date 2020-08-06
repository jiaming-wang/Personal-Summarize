%图片加框放大显示主函�?
clear all; clc;
for TestImgIndex=1:1
strh1=strcat('C:\Users\Wang\Desktop\101.png');
I = imread(strh1);  
%[1,1]和[91,91]是矩形的左上角和右下角的�?
%1.5是放大�?�?
%4是线�?
%1是离图像�?��面的距离
%1是放大图像显示在左下�?0)还是右下�?1)
I1 = ShowEnlargedRectangle(I,[30,120],[70,160],2,4,1,1); 
figure;imshow(I1);  
strw = strcat(num2str(TestImgIndex),'_labeled.png');
imwrite(I1,strw,'png');

end
