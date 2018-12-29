
 function [mouse_in_sph] =  Calculate_M_in_sphere(sph_radius, xmouse, ymouse)
     
    mouse_in_sph = [0,0,0]'; 
    
    if(xmouse*xmouse + ymouse*ymouse < sph_radius*sph_radius*0.5)
        mouse_in_sph(1) = xmouse; 
        mouse_in_sph(2) = ymouse; 
        mouse_in_sph(3) =(sph_radius*sph_radius - xmouse*xmouse - ymouse*ymouse).^0.5; 
    else 
         module =(sph_radius*sph_radius) / 2 * ((xmouse*xmouse + ymouse*ymouse).^0.5);
         norm_coords = [xmouse, ymouse, module]';                           % check this out
         mouse_in_sph = mouse_in_sph / norm(norm_coords); 
    end 
 end 
