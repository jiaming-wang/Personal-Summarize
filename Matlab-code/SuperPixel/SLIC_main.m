img = imread('C:\Users\wang\Desktop\6.jpeg');
img_size = size(img);   %三个元素：图像的高、图像的宽、图像的通道数
%设定超像素个数
K = 2;
%设定超像素紧凑系数
m_compactness = 20;

%转换到LAB色彩空间
cform = makecform('srgb2lab');       %rgb空间转换成lab空间 matlab自带的用法
img_Lab = applycform(img, cform);    %rgb转换成lab空间
%img_Lab = RGB2Lab(img);  %不好用不知道为什么
imshow(img_Lab)
% %检测边缘
% img_edge = DetectLabEdge(img_Lab);
% imshow(img_edge)
%得到超像素的LABXY种子点信息
img_sz = img_size(1)*img_size(2);
superpixel_sz = img_sz/K;
STEP = uint32(sqrt(superpixel_sz));
xstrips = uint32(img_size(2)/STEP);
ystrips = uint32(img_size(1)/STEP);
xstrips_adderr = double(img_size(2))/double(xstrips);
ystrips_adderr = double(img_size(1))/double(ystrips);
numseeds = xstrips*ystrips;
%种子点xy信息初始值为晶格中心亚像素坐标
%种子点Lab颜色信息为对应点最接近像素点的颜色通道值
kseedsx = zeros(numseeds, 1);
kseedsy = zeros(numseeds, 1);
kseedsl = zeros(numseeds, 1);
kseedsa = zeros(numseeds, 1);
kseedsb = zeros(numseeds, 1);
n = 1;
for y = 1: ystrips
    for x = 1: xstrips 
        kseedsx(n, 1) = (double(x)-0.5)*xstrips_adderr;
        kseedsy(n, 1) = (double(y)-0.5)*ystrips_adderr;
        kseedsl(n, 1) = img_Lab(fix(kseedsy(n, 1)), fix(kseedsx(n, 1)), 1);
        kseedsa(n, 1) = img_Lab(fix(kseedsy(n, 1)), fix(kseedsx(n, 1)), 2);
        kseedsb(n, 1) = img_Lab(fix(kseedsy(n, 1)), fix(kseedsx(n, 1)), 3);
        n = n+1;
    end
end
n = 1;
%根据种子点计算超像素分区
klabels = PerformSuperpixelSLIC(img_Lab, kseedsl, kseedsa, kseedsb, kseedsx, kseedsy, STEP, m_compactness);
img_Contours = DrawContoursAroundSegments(img, klabels);
imshow(img_Contours)
%合并小的分区
nlabels = EnforceLabelConnectivity(img_Lab, klabels, K); 
%根据得到的分区标签找到边界
img_ContoursEX = DrawContoursAroundSegments_EX(img, nlabels);
imshow(img_ContoursEX)

        
        






