%%计算互信息，MNMI
clear all; clc;
h=36;
w=26;
for TestImgIndex =1:40
A=strcat('C:\Users\wang\Desktop\附加实验\20noise\srgan\',num2str(TestImgIndex),'-outputs.png');
% A=strcat('C:\Users\wang\Desktop\附加实验\0noise\srgan\',num2str(TestImgIndex),'.png');
% A=double(imread(A));
A=rgb2gray(imread(A));
B=strcat('F:\研究生\数据集\fei原始\test\',num2str(TestImgIndex),'.bmp');
% B=double(imread(B));
B=rgb2gray(imread(B));
A=double(A);
B=double(B);
[H,W] = size(A)
% if W>H
%     h=32;
% w=48;
%   
% else
% h=48;
% w=32;
% end
% [mi_sum(TestImgIndex),mi_joint(TestImgIndex),mi_max(TestImgIndex),mi_min(TestImgIndex),mi_sqrt(TestImgIndex)]=MI(A,B);  
[mi_sum(TestImgIndex),mi_joint(TestImgIndex),mi_max(TestImgIndex),mi_min(TestImgIndex),mi_sqrt(TestImgIndex)]= deal(0);

count=0;
for x = 1 : h :H
   for y = 1 :w : W
        A1 = A(x : x+h-1, y : y+w-1);
        B1 = B(x : x+h-1, y : y+w-1);

        [mi_sum1,mi_joint1,mi_max1,mi_min1,mi_sqrt1]=MI(A1,B1); 
        mi_sum(TestImgIndex)=mi_sum(TestImgIndex)+mi_sum1;
        mi_joint(TestImgIndex)=mi_joint(TestImgIndex)+mi_joint1;
        mi_max(TestImgIndex)=mi_max(TestImgIndex)+mi_max1;
        mi_min(TestImgIndex)=mi_min(TestImgIndex)+mi_min1;
        mi_sqrt(TestImgIndex)=mi_sqrt(TestImgIndex)+mi_sqrt1;
        count=count+1;
   end
end
        mi_sum(TestImgIndex)=mi_sum(TestImgIndex)/count;
        mi_joint(TestImgIndex)=mi_joint(TestImgIndex)/count;
        mi_max(TestImgIndex)=mi_max(TestImgIndex)/count;
        mi_min(TestImgIndex)=mi_min(TestImgIndex)/count;
        mi_sqrt(TestImgIndex)=mi_sqrt(TestImgIndex)/count;
end

result_sum=mean(mi_sum,2);
result_joint=mean(mi_joint,2);
result_max=mean(mi_max,2);
result_min=mean(mi_min,2);
result_sqrt=mean(mi_sqrt,2);
