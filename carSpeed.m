function [distance1, speedMPH, speedtext]= carSpeed(image1, image2)

% subtracts the camera angle and the degrees
degreesFromVertical = 90 - 30 - ((640 * 0.042)/2);

% finds the location of the center of the image
carViewAngle1 = degreesFromVertical + (image1 * 0.042);
carViewAngle2 = degreesFromVertical + (image2 * 0.042);

%calculates the horizontal distance between objects and camera
distance1 = 7 * tand(carViewAngle1);
distance2 = 7 * tand(carViewAngle2);

%calculated the change in distance 
cardistance = distance2 - distance1;

%calculates the images being taken at 0.1 intervales
speedMetersPerSecond = cardistance * 10;

%converts meters per second in to miles per hour
speedMPH = speedMetersPerSecond * 2.236936;
speedMPH = round(speedMPH);

if speedMPH > 30
    speedtext = 'car is speeding';
else
    speedtext = 'car is not speeding';
end

end