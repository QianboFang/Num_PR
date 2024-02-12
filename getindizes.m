function [i_2d,L_2d,II_2d,i_3d,j_3d,L_3d,II_3d,J_3d] = getindizes()
global const
%% Aufgabe 2 von Sifeng Li

n = const.n;

l0 = 0:n-1;
i0 = 0:3;

    [i_2d,L_2d] = ndgrid(i0,l0);
     II_2d =2*L_2d+i_2d;
    

    [i_3d,j_3d,L_3d] = ndgrid(i0,i0,l0);
    II_3d = 2*L_3d+i_3d;
    J_3d = 2*L_3d+j_3d;
    
end