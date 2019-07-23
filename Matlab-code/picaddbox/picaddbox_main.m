%图片加框放大显示主函敿
clear all; clc;
for TestImgIndex=1:1
strh1=strcat('C:\Users\wang\Desktop\1.png');
I = imread(strh1);  
%[1,1]和[91,91]是矩形的左上角和右下角的点
%1是放大倍数
%4是线宽
%2是离图像最下面的距离
%1是放大图像显示在左下角还是右下角 
I1 = ShowEnlargedRectangle(I,[1,1],[91,91],1.5,4,1,0); 
figure;imshow(I1);  
strw = strcat(num2str(TestImgIndex),'_labeled.png');
imwrite(I1,strw,'png');

end
