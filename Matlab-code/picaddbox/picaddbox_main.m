clear all; 
clc;
for TestImgIndex=1:1
strh1=strcat('/Volumes/Elements/EIP/data/hr/1.png');
I = imread(strh1);  
% I, LeftUpPoint, RightBottomPoint, Enlargement_Factor, LineWidth, gap, position
I1 = ShowEnlargedRectangle(I,[120,40],[160,80],2,4,1,1); 
figure;imshow(I1);  
strw = strcat(num2str(TestImgIndex),'_labeled.png');
% % imwrite(I1,strw,'png');

end
