function [EulerAxis,Angle] = rotMat2Eaa(RotMatrix)



Trace = RotMatrix(1,1)+RotMatrix(2,2)+RotMatrix(3,3);

Angle = acosd((Trace-1)/2);


ux = (RotMatrix-(RotMatrix'))/(2*sind(Angle));

EulerAxis = [(-ux(2,3)),(ux(1,3)),(-ux(1,2))]';

end

