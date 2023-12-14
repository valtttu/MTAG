%% Script that crops image to n pieces and randomizes the order

clear all
close all

im = imread("Figs\aalto_logo.png");
[n, m, k] = size(im);

n_pieces = 20;

rect_sz = flip([floor(n/n_pieces), floor(m/n_pieces)]);

x = 1;
y = 1;
inds = randperm(n_pieces^2);
keys = [(1:n_pieces^2)', inds'];

writematrix(keys, './Figs/keys.txt');

for i = 1:n_pieces
    for j = 1:n_pieces
        im_C = imcrop(im, [x, y, rect_sz]);
        imwrite(im_C, sprintf('./Figs/Pcs/img_%03.f.png', inds((i-1)*n_pieces + j)))
        x = x + rect_sz(1);
    end
    x = 1;
    y = y + rect_sz(2);
end

for i = 1:n_pieces^2
    key = keys(keys(:,2) == i,1);
    copyfile(sprintf('./Figs/Pcs/img_%03.f.png', i), sprintf('./Figs/Rec/img_%03.f.png', key));
end

figure();
dirOutput = dir(fullfile('./Figs/Pcs/',"img_*.png"));
fileNames = "./Figs/Pcs/" + string({dirOutput.name});
montage(fileNames,"Size",[n_pieces n_pieces]);


figure();
dirOutput = dir(fullfile('./Figs/Rec/',"img_*.png"));
fileNames = "./Figs/Rec/" + string({dirOutput.name});
montage(fileNames,"Size",[n_pieces n_pieces]);