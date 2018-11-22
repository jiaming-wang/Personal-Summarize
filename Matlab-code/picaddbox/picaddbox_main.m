%图片加框�?��放大显示主函�?
clear all; clc;
for TestImgIndex=1:1
strh1=strcat('C:\Users\wang\Desktop\�½��ļ���\ͼƬ17.png');
I = imread(strh1);  
      
I1 = ShowEnlargedRectangle(I,[240,80],[290,140],3,2,1,1); %输入参数(img,[x,y][m,n],3,2,2),必要条件m-x=n-y,根据n,m,x,y调整框的大小
figure;imshow(I1);  
strw = strcat(num2str(TestImgIndex),'_labeled.png');
imwrite(I1,strw,'png');

end
