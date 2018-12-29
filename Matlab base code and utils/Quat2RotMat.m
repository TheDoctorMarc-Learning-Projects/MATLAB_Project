function [RotMat] = Quat2RotMat(q)

RotMat = [1 - 2*q(3).^2 - 2*q(4).^2	2*q(2)*q(3) - 2*q(4)*q(1)	2*q(2)*q(4) + 2*q(3)*q(1); 
2*q(2)*q(3) + 2*q(4)*q(1)	1 - 2*q(2).^2 - 2*q(4).^2	2*q(3)*q(4) - 2*q(2)*q(1); 
2*q(2)*q(4) - 2*q(3)*q(1)	2*q(3)*q(4) + 2*q(2)*q(1)	1 - 2*q(2).^2 - 2*q(3).^2]; 

end 