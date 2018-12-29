function [q] = Euler_Angles_to_Quat(angles)

    q(1) = cos(angles(3)/2) * cos(angles(2)/2) * cos(angles(1)/2) + sin(angles(3)/2) * sin(angles(2)/2) * sin(angles(1)/2); 
    q(2) = sin(angles(3)/2) * cos(angles(2)/2) * cos(angles(1)/2) - cos(angles(3)/2) * sin(angles(2)/2) * sin(angles(1)/2); 
    q(3) = cos(angles(3)/2) * sin(angles(2)/2) * cos(angles(1)/2) + sin(angles(3)/2) * cos(angles(2)/2) * sin(angles(1)/2); 
    q(4) = cos(angles(3)/2) * cos(angles(2)/2) * sin(angles(1)/2) - sin(angles(3)/2) * sin(angles(2)/2) * cos(angles(1)/2); 

end 