cd('C:\Users\SU\Desktop\视觉物联网作业\测试\');                         %更改当前工作区至包含图片的文件夹处
files = dir('C:\Users\SU\Desktop\视觉物联网作业\测试\*.jpg');           %读取该文件夹下的jpg格式文件
 for i = 1 : length(files)                                     
   s = files(i).name;
   I = imread(s);
   hsv_image = rgb2hsv(I);                                             %将RGB格式文件转成HSV文件（MATLAB自带函数）
   h = hsv_image(:,:,1);                                               %读取每张图片中的h、s、v值
   s = hsv_image(:,:,2);
   v = hsv_image(:,:,3);
   id = h>2/360 & h<30/360 & s>9/100 & s<62/100 & v>43/100 &v <99/100; %根据自己拾取的hsv阈值编写，在该范围的图像点为白，范围外为黑
   figure,                                                             %生成图像
   subplot(2,1,1),imshow(I);                                           %将图像分为两部分，第一部分为原图像
   subplot(2,1,2);imshow(id);                                          %第二部分为处理后的图像
 end