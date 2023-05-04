clear
close all
clc

load('outputs.mat');

N = length(outputs(:,1,1,1));
img = zeros(N, 512, 512, 3);

for i=1:N
    can1 = reshape(outputs(i,1,:,:),512,512);
    can2 = reshape(outputs(i,2,:,:),512,512);
    can3 = reshape(outputs(i,3,:,:),512,512);
    
    img(i,:,:,:) = cat(3,can1,can2,can3);
end

n=8;
imshow(reshape(img(n,:,:,:),512,512,3))