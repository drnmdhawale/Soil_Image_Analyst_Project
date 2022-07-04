%% Extract RGB Information from Soil Images
% Author: Trevor Stanhope
% Department of Bioresourse Engineering
% McGill University, Macdonald Campus, Quebec, Canada
% Date January 11th, 2013

% Modified L57-L70: by Nandkishor Dhawale
% Department of Bioresourse Engineering
% McGill University, Macdonald Campus, Quebec, Canada
% Date January 31st, 2013

% ARGUMENTS
% 'imgDir'; String of path to directory name where image files are 
% read from.

% RETURNS
% [results]; A 3D matrix consisting of normalized histograms 
% for RGB. Additionally writes results to imgDir-results.xls, where each
% sheet is the mean histogram distribution of the trials for Red, Blue, and
% Green.

%% getRGBMatrix()
% Given a directory, returns data structure of test results from random 
% samples for a given directory, saves filter 
function [results imgFiles] = getRGBMatrix(imgDir)
    % Global Objects
    range = 256;
   	rangeScaled = 0:1/255:1;
    sampleSize = 25;
    sampleNum =3;
    filters = {'red', 'green', 'blue', 'gray'};
%     filters = {'gray'};
    imgPath = strcat(imgDir, '/', '*.jpg'); % only take .jpg
    imgFiles = dir(imgPath);
    numImages = length(imgFiles);
    results = zeros(numImages, range, length(filters)); % initialize results object
    samples = zeros(range, sampleNum); % initialize samples object
    % Loop
    for i = 1:numImages % For each full image in imgDir
        imgFull = imread(strcat(imgDir,'/', imgFiles(i).name)); % Get the full image and dimensions
        [imgWidth imgLength] = size(imgFull(:,:,1)); % get dimensions   
        order{i} = imgFiles(i).name;
        for j = 1:3 % For each channel (one of RGB)
            imgChannel = imgFull(:,:,j);
%             imgChannel = rgb2gray(imgFull);
            for k = 1:sampleNum % Take multiple samples (in 50x50 sections) of each channel
                minX = randi(round(imgWidth/3)) + round(imgWidth/3);
                minY = randi(round(imgLength/3)) + round(imgLength/3);
                maxX = minX + sampleSize;
                maxY = minY + sampleSize;
                imgSample = imgChannel(minX:maxX, minY:maxY);
                figure(1)
                imshow(imgSample)
                pause(0.01)
                imgHist = imhist(imgSample);
                imgSorted = sort(imgHist); % sorts histogram into col
                samples(:,k) = imgSorted; % adds new sample as next col
            end          
            samplesMean = round(mean(samples,2)); % get mean of each row
            results(i+1,:,j) = samplesMean; % add as row to proper channel page            
        end 
    end
    
    % IF USING XLS: write to .xls file
    for i = 1:length(filters)
        results(1,:,i) = rangeScaled;
        xlswrite(strcat(imgDir,'_results.xlsx'), results(:,:,i), filters{i});
    end
    xlswrite(strcat(imgDir,'_imageNames.xlsx'), order);
end
