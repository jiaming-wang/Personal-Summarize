f=imread('d.tif');
f=modcrop(f,8);
%                            quality
[output]= jpegCompression(f,10);
figure;
subplot(1,2,1),imshow(f);
imwrite(uint8(output),'q10.png','png');
subplot(1,2,2),imshow(output);
