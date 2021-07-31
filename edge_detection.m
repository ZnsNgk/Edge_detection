function edge = edge_detection(im)
%EDGE_DETECTION 此处显示有关此函数的摘要
%   此处显示详细说明
    im = double(im);
    [h, w] = size(im);
    im_new = zeros(h+2, w+2);
    im_new(2:h+1,2:w+1) = im;
    im_edge = zeros(h+2, w+2);
    im_edge(1:h,1:w) = im;
    im_edge = abs(im_edge - im_new);
    im_edge = im_edge(1:h,1:w);
    maxium = max(max(im_edge));
    minium = min(min(im_edge));
    im_edge = im_edge * (255 / (maxium - minium));
    im_edge = 255 - im_edge;
    edge = uint8(im_edge);
end

