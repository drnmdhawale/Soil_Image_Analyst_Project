%% Extract Texture Variance from Soil Image Randomly
% Author: Trevor Stanhope
% Department of Bioresourse Engineering
% McGill University, Macdonald Campus, Quebec, Canada
% Date February 14th, 2013

% ARGUMENTS
% 'imgDir'; String of path to directory name where image files are 
% read from.

% RETURNS
% [results]; A 3D matrix consisting of pixel correlations by offset

function [sampleSemiVariance sampleOrder limits] = getTextureSemiVariance(imgDir)
    imgPath = strcat(imgDir, '/', '*.jpg'); % only take .jpg
    imgFiles = dir(imgPath);
    numImages = length(imgFiles);
    sampleSize = 150;
    limitSize = 5;
  
    for img = 1:numImages
        imgFull = imread(strcat(imgDir,'/', imgFiles(img).name)); % Get the full image and dimensions
        imgGray = rgb2gray(imgFull);
        [imgWidth imgLength] = size(imgGray);
        minX = randi(round(imgWidth/3)) + round(imgWidth/3);
        minY = randi(round(imgLength/3)) + round(imgLength/3);
        maxX = minX + sampleSize;
        maxY = minY + sampleSize;
        imgSample = imgGray(minX:maxX, minY:maxY);
        distance = pdist([1:sampleSize;1:sampleSize]');
        limits = [1:limitSize:(max(distance)-limitSize); (limitSize+1):limitSize:max(distance)]';
        %
        for i = 1:length(limits)
            indices = find(distance > limits(i,1) & distance < limits(i,2));
            sampleVariance(i) = var(double(imgSample(indices)));
        end
        % Outputs
        sampleOrder{img} = imgFiles(img).name;
        sampleSemiVariance(img,:) = sampleVariance/2;
    end
    
end
