function [Matrix] = eAngles2rotM(ang1,ang2,ang3)


Matrix = [(cosd(ang2)*cosd(ang3)),(cosd(ang3)*sind(ang2)*sind(ang1)-(cosd(ang1)*sind(ang3))),(cosd(ang3)*cosd(ang1)*sind(ang2)+(sind(ang3)*sind(ang1)));(cosd(ang2)*sind(ang3)),(sind(ang3)*sind(ang2)*sind(ang1)+(cosd(ang1)*cosd(ang3))),(sind(ang3)*sind(ang2)*cosd(ang1)-(cosd(ang3)*sind(ang1)));-sind(ang2),cosd(ang2)*sind(ang1),(cosd(ang2)*cosd(ang1))];

end

