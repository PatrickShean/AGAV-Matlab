function [speedText, Speed, Size, Width] = controller(image1, image2)
[boundingBoxCar1, distance1] = imageDetection(image1);
[boundingBoxCar2, distance2] = imageDetection(image2);
[distance1, Speed, speedText] = carSpeed(distance1, distance2);
[Width, Size] = carWidth(distance1, boundingBoxCar1);
end