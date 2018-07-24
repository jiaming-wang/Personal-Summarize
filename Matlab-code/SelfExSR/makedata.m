%%SelfExSR制作训练集
clear all; clc;
scale=4;
dataname='fei';%%数据集名称
if ~exist(strcat('.\data\',dataname,'\image_SRF_4')) 
    mkdir(strcat('.\data\',dataname,'\image_SRF_4'))
end 
for TestImgIndex =1:40
    A=strcat('F:\研究生\数据集\spacenet\test\test\',num2str(TestImgIndex),'.tif');
    A=imread(A);
    A= modcrop(A, scale);
    if ndims(A) == 3
        A1= rgb2ycbcr(A);
        [w,h,c] =size(A)
        im= double(A1(:,:,1));
        im_l_cb = A1(:, :, 2);
        im_l_cr = A1(:, :, 3);
        im_h_ycbcr=zeros(w/scale,h/scale,3);
    else
        im= double(A1(:,:,1));
    end
    im = imresize(im,1/scale,'bicubic'); 
    im = Add_noise(im , 20);
    if ndims(A) == 3
        im_l_cb = imresize(im_l_cb, 1/scale,'nearest');
        im_l_cr = imresize(im_l_cr, 1/scale,'nearest');
        im_h_ycbcr(:, :, 1) = (im);
        im_h_ycbcr(:, :, 2) = (im_l_cb);
        im_h_ycbcr(:, :, 3) = (im_l_cr);
        im_h = ycbcr2rgb(im_h_ycbcr/256);
        im_h =im_h *255;
    else
        im_h=im;
    end
    strw = strcat(strcat('.\data\',dataname,'\image_SRF_4\img_'),num2str(TestImgIndex, '%03d'),'_SRF_4_HR.png');
    imwrite(uint8(A),strw,'png');
    strw1 = strcat(strcat('.\data\',dataname,'\image_SRF_4\img_'),num2str(TestImgIndex, '%03d'),'_SRF_4_LR.png');
    imwrite(uint8(im_h),strw1,'png');
end
% 
% for TestImgIndex =1:40
%     A=strcat('F:\研究生\数据集\fei原始\test\',num2str(TestImgIndex),'.bmp');
%     A=imread(A);
% %     A= modcrop(A, scale);
%     B=strcat('C:\Users\wang\Desktop\附加实验\blur\2\',num2str(TestImgIndex),'.png');
%     B=imread(B);
% %     B= modcrop(B, scale);
%     strw = strcat(strcat('.\data\',dataname,'\image_SRF_4\img_'),num2str(TestImgIndex, '%03d'),'_SRF_4_HR.png');
%     imwrite(uint8(A),strw,'png');
%     strw1 = strcat(strcat('.\data\',dataname,'\image_SRF_4\img_'),num2str(TestImgIndex, '%03d'),'_SRF_4_LR.png');
%     imwrite(uint8(B),strw1,'png');
% end