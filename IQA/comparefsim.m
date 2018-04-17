%%%计算FSIM
clear all; clc;
for TestImgIndex = 1:40

    fprintf('----------------------------------------------------------Processing  %d_test.jpg\n', TestImgIndex);

%% read ground truth of one test face i5mage
I=strcat('F:\研究生\数据集\fei原始\test\',num2str(TestImgIndex),'.bmp');
I=double(imread(I));

% I1=strcat('C:\Users\wang\Desktop\附加实验\0noise\srgan\',num2str(TestImgIndex),'.png');
I1=strcat('C:\Users\wang\Desktop\images\',num2str(TestImgIndex),'-outputs.png');
I1=imread(I1);
I= rgb2ycbcr(I);
I= double(I(:,:,1));
I1 = rgb2ycbcr(I1);
I1= double(I1(:,:,1));
% I=shave(I,[16,16]);
% I1=shave(I1,[16,16]);
I=shave(I,[4,4]);
I1=shave(I1,[4,4]);
test1(TestImgIndex)=FeatureSIM(I1,I);
end
ss=mean(test1,2);
