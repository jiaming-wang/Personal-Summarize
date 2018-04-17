%%图像梯度
clear all; clc;
for TestImgIndex = 1:100

    fprintf('----------------------------------------------------------Processing  %d_test.jpg\n', TestImgIndex);

%% read ground truth of one test face i5mage
A = strcat('C:\Users\wang\Desktop\附加实验\通用图像\5\vdsr\',num2str(TestImgIndex),'.bmp');
% A=strcat('C:\Users\wang\Desktop\附加实验\通用图像\20\srgan\',num2str(TestImgIndex),'-outputs.png');
A=(imread(A));
% A = rgb2ycbcr(A);
A = (A(:,:,1));
A=double(A);%转化图像为double型8.4
% A=shave(A,[16,16]);
[GX,GY]=gradient(A);%求图像梯度
G=abs(GX)+abs(GY);%水平垂直差分
d1(TestImgIndex)=sum(sum(G))/480/320;
% imshow(G)%显示图像
end

dd = mean(d1,2);
