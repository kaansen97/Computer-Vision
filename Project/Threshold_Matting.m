im_cat = imread("house1.png");
im_cat = double(im_cat)./255;

size_y = 540;
size_x = 960;

im_cat = im_cat(1:size_y,1:size_x,:);
%figure
%histogram(im_cat(:,:,1),256,'facecolor','r','facealpha',.5)
%hold on
%histogram(im_cat(:,:,2),256,'facecolor','g','facealpha',.5)
%histogram(im_cat(:,:,3),256,'facecolor','b','facealpha',.5)
%histogram(im_cat,256,'facecolor','k','facealpha',.5)
%hold off

figure
im_cat_m = zeros(size(im_cat,1),size(im_cat,2));
im_cat_m(im_cat(:,:,2)>0.1 & ...
        im_cat(:,:,1)>0.15 & im_cat(:,:,1)<0.7 & ...
        im_cat(:,:,3)>0.3 & im_cat(:,:,3)<0.7 ...
        ) = 1;

im_cat_m2 = ones(size(im_cat,1),size(im_cat,2));
im_cat_m2(im_cat_m (:) == 1) = 0;
imshow(im_cat_m )
%  imshow(im_cat_m.*im_for + im_cat_m2 .* im_cat)