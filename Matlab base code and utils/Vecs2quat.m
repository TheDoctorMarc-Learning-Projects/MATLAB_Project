function [q] = Vecs2quat (v1, v2)
%     %normalize(v1); 
%     %normalize(v2); 
%     v3 = cross(v1, v2); 
%     q = quat(1 +  v1(1)*v2(1) + v1(2)*v2(2) + v1(3)*v2(3), v3.x, v3.y, v3.z); %dot(v1, v2), v3.x, v3.y, v3.z); 
%     normalize(q); 

% the above method crashes in dot product, so: 


 angle = (v2' * v1) / norm(v2) * norm(v1); 
 c_prod = cross(v1,v2)
 sin_2 = sin(angle * 0.5);
 cos_2 = cos(angle * 0.5);
 q = [cos_2  sin_2 * (c_prod' / norm(c_prod))]'
 normalize(q)            
                
end 



 