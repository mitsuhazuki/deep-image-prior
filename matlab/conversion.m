clear
close all
clc

% conversion

%% Load Images
load('outputs.mat');
load('inputs.mat');

%% REF

can1 = reshape(REF(1,:,:),512,512);
can2 = reshape(REF(2,:,:),512,512);
can3 = reshape(REF(3,:,:),512,512);

REF = reshape(cat(3,can1,can2,can3),512,512,3);

save('REF.mat', 'REF')

%% DET
can1 = reshape(DET(1,:,:),512,512);
can2 = reshape(DET(2,:,:),512,512);
can3 = reshape(DET(3,:,:),512,512);

DET = reshape(cat(3,can1,can2,can3),512,512,3);

save('DET.mat', 'DET')

%% MASK
can1 = reshape(img_mask(1,:,:),512,512);

MASK = reshape(can1,512,512);

save('MASK.mat', 'MASK')

%% HR

can1 = reshape(img_HR(1,:,:),384,576);
can2 = reshape(img_HR(2,:,:),384,576);
can3 = reshape(img_HR(3,:,:),384,576);

HR = reshape(cat(3,can1,can2,can3),384,576,3);

save('HR.mat', 'HR')

%% LR

can1 = reshape(img_LR(1,:,:),96,144);
can2 = reshape(img_LR(2,:,:),96,144);
can3 = reshape(img_LR(3,:,:),96,144);

LR = reshape(cat(3,can1,can2,can3),96,144,3);

save('LR.mat', 'LR')

%% Y
can1 = reshape(output(1,:,:),512,512);
can2 = reshape(output(2,:,:),512,512);
can3 = reshape(output(3,:,:),512,512);

Y = reshape(cat(3,can1,can2,can3),512,512,3);

save('Y.mat','Y')

%% Y
N = length(outputs(:,1,1,1));
Y = cell(N,1);
for i=1:N
    can1 = reshape(outputs(i,1,:,:),512,512);
    can2 = reshape(outputs(i,2,:,:),512,512);
    can3 = reshape(outputs(i,3,:,:),512,512);
    
    Y{i} = reshape(cat(3,can1,can2,can3),512,512,3);
end

save('Y.mat','Y')

%% Y SR
N = length(outputs(:,1,1,1));
Y = cell(N,1);
for i=1:N
    can1 = reshape(outputs(i,1,:,:),384,576);
    can2 = reshape(outputs(i,2,:,:),384,576);
    can3 = reshape(outputs(i,3,:,:),384,576);
    
    Y{i} = reshape(cat(3,can1,can2,can3),384,576,3);
end

save('Y.mat','Y')

%% cat Y
Y = [Y; Y1];

save('Y.mat','Y')

%% Affichage Images
figure
imshow(REF)

figure
imshow(DET)

figure
imshow(Y{30})

%%

img = imread('barbara.png');

img = imresize(img,[512,512]);

imshow(img)















