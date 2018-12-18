function [RotMatrix] = Eaa2rotMat(axis,angle)

axisd = axis/ sqrt(axis'*axis);

Ux = [0, -axisd(3), axisd(2); axisd(3), 0, -axisd(1); -axisd(2), axisd(1), 0];

RotMatrix = eye(3)* cosd(angle) + (1-cosd(angle))*(axisd*axisd') + Ux*sind(angle); 

end

