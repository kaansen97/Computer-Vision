im_house = imread("house1.png");
im_house = double(im_house)./255;

size_y = 540;
size_x = 960;

im_house = im_house(1:size_y,1:size_x,:);

figure
im_house_m = zeros(size(im_house,1),size(im_house,2));
im_house_m(im_house(:,:,2)>0.1 & im_house(:,:,2)<0.8 & ...
        im_house(:,:,1)>0.15 & im_house(:,:,1)<1. & ...
        im_house(:,:,3)>0.5 & im_house(:,:,3)<0.8 ...
        ) = 1;
imshow(im_house_m )
