function [boundingBox, carLocation] = imageDetection(filename)

%read the car image
carImage = imread(filename);

%converts rgb to a hsv
carHsv = rgb2hsv(carImage);

%converts hsv to binary
carBinary = im2bw(carHsv, 0.2);

%fills in the holes with the image
carFill = imfill(carBinary, 'holes');

%Erodes small sections of the image
carFlat = strel('square', 30);
carErode = imerode(carFill, carFlat);

%Dilates binary image to improve boundary detection
carFlat2 = strel('square', 60);
carDilate = imdilate(carErode, carFlat2);

%returns the region of boundingbox
stats = regionprops(carDilate, 'BoundingBox', 'Centroid');
boundingBox = stats.BoundingBox;
centroid = stats.Centroid;

carMiddle = centroid(1,2);
carLocation = 640 - carMiddle;

%figure('Name', 'Original Car'), imshow(carImage); hold on
%figure('Name', 'hsv Car'), imshow(carHsv); hold on
%figure('Name', 'Binary Car'), imshow(carBinary); hold on
%figure('Name', 'Fill Car'), imshow(carFill); hold on
%figure('Name', 'Erode Car'), imshow(carErode); hold on
figure('Name', 'Dilate Car'), imshow(carDilate); hold on
rectangle('Position', boundingBox, 'EdgeColor', 'yellow', 'Linewidth', 2);
for x = 1: numel(stats)
plot(stats(x).Centroid(1),stats(x).Centroid(2),'ro');
end

end