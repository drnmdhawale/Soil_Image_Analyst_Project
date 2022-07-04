% Extract R G B pixel information, from soil images
% Author: Nandkishor Dhawale
% Ph.D Student, Department of Bioresourse Engineering
% McGill University, Macdonald Campus, Quebec, Canada
% Date August 29th, 2011

%% load image file
clear
clc
input_file=imread('Soil_S.jpg');  % Read image from folder
out_file='soil_s.bmp'; 
A=17; % referencing for Soil Number
main_img=input_file;
imshow(main_img) % Display the image 
whos main_img % check if the image is loaded properly
size (main_img) % check the size of the image

waitforbuttonpress 

%% Extract 50 X 50 pixel area of the main image
redc_img=main_img(1271:1321,1703:1753,:); % arbitrary choose area and extract 50 X 50 pixels 
imshow(redc_img) % Display the image 
whos redc_img % check if the reduced image is loaded properly
size (redc_img) % check the size of the image

%% Extract the the RGB values on each pixel and average the rows
pixcol=redc_img(:,:,:);  % to find red, green, blue
R=mean(pixcol(:,:,1)); %to ectract R values on selected pixels
G=mean(pixcol(:,:,2)); %to ectract G values on selected pixels
B=mean(pixcol(:,:,3)); %to ectract B values on selected pixels
%% Average the colums to get one average value
R=round(mean(R));
G=round(mean(G));
B=round(mean(B));
%% save information
RGB_data=[A R G B]
%imwrite(redc_img, out_file,'bmp')

% Only enable when to actually save data
% manually disable the below line
%save('RGBfile.txt', 'RGB_data','-append', '-ascii', '-tabs')

