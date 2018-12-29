function [quat] = AxisAngle_to_Quat(axis, angle)

quat = [cos(angle/2) axis(1)*sin(angle/2) axis(2)*sin(angle/2) axis(3)*sin(angle/2) ]'

end 