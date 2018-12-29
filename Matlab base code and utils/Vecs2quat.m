function [q] = Vecs2quat (v1, v2)
    normalize(v1); 
    normalize(v2); 
    v3 = cross(v1, v2)
    %q = [1 + dot(v1, v2) v3']'; 
    q = [dot(v1, v2) v3']'; 
    normalize(q); 

% another method: 

%  angle = (v2' * v1) / norm(v2) * norm(v1); 
%  c_prod = cross(v1,v2)
%  sin_2 = sin(angle * 0.5);
%  cos_2 = cos(angle * 0.5);
%  q = [cos_2  sin_2 * (c_prod' / norm(c_prod))]'
%  normalize(q)            
                
end 



 