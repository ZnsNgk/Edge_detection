clc
close all
clear all

img_path = dir('./input/');
for i = 3 : length(img_path)
    [add, imname, type] = fileparts(img_path(i).name);
    disp(imname)
    im = imread(['./input/' imname type]);
    [h,w,c] = size(im);
    if c == 3
        im = rgb2ycbcr(im);
        im = im(:,:,1);
    end
    im_edge = edge_detection(im);
    path = ['./output/' imname type];
    imwrite(im_edge, path);
end