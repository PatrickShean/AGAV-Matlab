function[size, width] = carWidth(distance1, boundingBox)
%get the X coordinates of Box
carXCoord = boundingBox(1);
%gets width from the bounding box
carWidth = boundingBox(3);
%gets the width of the left side of car
leftOfCarWidth = abs((480/2)- carXCoord) * 0.042;
%gets the width of the right side of car
rightOfCarWidth = abs((480/2)- (carXCoord + carWidth)) * 0.042;
%adds both sides returns total width in degrees
widthdegrees = leftOfCarWidth + rightOfCarWidth;
%find the square root of the cars first position multiplied by the tangent of degrees of the width
width = sqrt(distance1.^2) * tand(widthdegrees);

if width > 2.5
    size = 'Too wide for tunnel.';
else
    size = 'clearance is given.';   
end

end