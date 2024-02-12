function [M_2d,N_2d,M_3d,N_3d] = getindizes()
global const
%% Aufgabe 2 von Sifeng Li

n = const.n;

l0 = 0:n-1;
i0 = 0:3;

    [i_2d,L_2d] = ndgrid(i0,l0);
    N_2d = 2*L_2d+i_2d;
    M_2d(:,:,1) = i_2d;
    M_2d(:,:,2) = L_2d;

    [i_3d,j_3d,L_3d] = ndgrid(i0,i0,l0);
    N_3d(:,:,:,1) = 2*L_3d+i_3d;
    N_3d(:,:,:,2) = 2*L_3d+j_3d;
    M_3d(:,:,:,1) = i_3d;
    M_3d(:,:,:,2) = j_3d;
    M_3d(:,:,:,3) = L_3d;

end