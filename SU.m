cd('C:\Users\SU\Desktop\�Ӿ���������ҵ\����\');                         %���ĵ�ǰ������������ͼƬ���ļ��д�
files = dir('C:\Users\SU\Desktop\�Ӿ���������ҵ\����\*.jpg');           %��ȡ���ļ����µ�jpg��ʽ�ļ�
 for i = 1 : length(files)                                     
   s = files(i).name;
   I = imread(s);
   hsv_image = rgb2hsv(I);                                             %��RGB��ʽ�ļ�ת��HSV�ļ���MATLAB�Դ�������
   h = hsv_image(:,:,1);                                               %��ȡÿ��ͼƬ�е�h��s��vֵ
   s = hsv_image(:,:,2);
   v = hsv_image(:,:,3);
   id = h>2/360 & h<30/360 & s>9/100 & s<62/100 & v>43/100 &v <99/100; %�����Լ�ʰȡ��hsv��ֵ��д���ڸ÷�Χ��ͼ���Ϊ�ף���Χ��Ϊ��
   figure,                                                             %����ͼ��
   subplot(2,1,1),imshow(I);                                           %��ͼ���Ϊ�����֣���һ����Ϊԭͼ��
   subplot(2,1,2);imshow(id);                                          %�ڶ�����Ϊ������ͼ��
 end