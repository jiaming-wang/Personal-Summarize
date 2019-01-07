%鍥剧墖鍔犳灞?儴鏀惧ぇ鏄剧ず涓诲嚱鏁?
clear all; clc;
for TestImgIndex=1:1
strh1=strcat('F:\研究生\ME\论文\基于多尺度残差深度神经网络的卫星图像超分辨率\lapsrn-c\7.png');
I = imread(strh1);  
I1 = ShowEnlargedRectangle(I,[170,86],[298,194],3,4,1,1);   %杈撳叆鍙傛暟(img,[x,y][m,n],3,2,2),蹇呰鏉′欢m-x=n-y,鏍规嵁n,m,x,y璋冩暣妗嗙殑澶у皬
I1 = ShowEnlargedRectangle(I,[165,228],[235,280],3,4,1,1);
I1 = ShowEnlargedRectangle(I,[252,253],[279,278],3,4,1,1);
figure;imshow(I1);  
% strw = strcat(num2str(TestImgIndex),'_labeled.png');
% imwrite(I1,strw,'png');

end
