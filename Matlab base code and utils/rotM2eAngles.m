function [ang1,ang2,ang3] = rotM2eAngles(matrix)

ang2 = asind(-matrix(3,1));

ang1 = atan2d((matrix(3,2)/cosd(ang2)),(matrix(3,3)/cosd(ang2)));

ang3 = atan2d((matrix(2,1)/cosd(ang2)),(matrix(1,1)/cosd(ang2)));

end

