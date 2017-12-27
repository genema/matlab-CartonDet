% function to read training examples into binary_imgs array
% before reading samples are resampled to 66x66 pixels and converted to 
% grayscale
function [binary_imgs] = load_training_set(cartons)

for i=1:size(cartons,2)
    tmp_img = imread(cartons{i}.fileName);
    tmp_img = imresize(tmp_img, [66 66]);
    tmp_img = rgb2gray(tmp_img);
    
    binary_imgs(i) = {tmp_img};
end

end