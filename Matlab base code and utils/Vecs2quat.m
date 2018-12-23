function [q] = Vecs2quat (v1, v2)
    normalize(v1)
    normalize(v2) 
    v3 = cross(v1, v2)
    q = quat(1 + dot(v1, v2), v3.x, v3.y, v3.z)
    normalize(q)
end 



 