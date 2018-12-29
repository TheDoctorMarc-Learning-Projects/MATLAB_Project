function [angles] = Quat_to_Euler_Angles(q)

% credits to Tait_Bryan 

angles(1) = atan2(q(1)*q(3) + q(2)*q(4), q(1)*q(4) - q(2)*q(3))
angles(2) = acos(-q(1).^2 - q(2).^2 + q(3).^2 + q(4).^2)
angles(3) = atan2(q(1)*q(3) - q(2)*q(4), q(2)*q(3) + q(1)*q(4))

end 