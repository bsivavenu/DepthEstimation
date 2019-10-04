% imwrite(rawDepths(:,:,1), 'test.png')
% I=depths(:,:,1);
% imshow(I*10)
% colormap('jet')
clear all;
clc;

load('nyu_depth_v2_labeled.mat')

for i=1:1449
    filename1 = ['D:\NYUv2\rgb\rgb_' num2str(i) '.png'];
    filename2 = ['D:\NYUv2\depth\depth_' num2str(i) '.png'];
    imwrite(images(:,:,:,i), filename1)
    imwrite(uint8(((depths(:,:,i)/10.5))*255), filename2)
    
end
