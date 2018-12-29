function [axis, angle] = Quat_to_AxisAngle(q)

angle = 2 * acos(q(1))
axis(1) = q(2) / sqrt(1-q(1)*q(1))
axis(2)  = q(3) / sqrt(1-q(1)*q(1))
axis(3)  = q(4) / sqrt(1-q(1)*q(1))


% TODO: check for 0 and 180 degree singularities


end 