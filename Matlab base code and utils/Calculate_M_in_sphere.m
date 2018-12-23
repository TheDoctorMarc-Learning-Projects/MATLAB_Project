
 function [mouse_in_sph] =  Calculate_M_in_sphere(xlim)
     
    mouse_in_sph = [0,0,0]'; 
    
    sph_radius = (xlim(2) - xlim(1)) * 0.5; 
    
    if(xmouse*xmouse + ymouse*ymouse < shp_radius*sph_radius*0.5)
        mouse_in_sph(1) = xmouse; 
        mouse_in_sph(2) = ymouse; 
        mouse_in_sph(3) = (sph_radius*sph_radius - xmouse*xmouse - ymouse*ymouse).^0.5; 
    else 
        module =(sph_radius*sph_radius) / 2 * ((xmouse*xmouse + ymouse*ymouse).^0.5);
        abs_module = abs(module); 
        mouse_in_sph(1) = sph_radius * xmouse / abs_module(1); 
        mouse_in_sph(2) = sph_radius * ymouse / abs_module(2); 
        mouse_in_sph(3) = sph_radius * module(3) / abs_module(3); 
        
    end 
 end 
