function [i_tilde_2d,l_2d,lli_2d,i_tilde_3d,j_tilde_3d,l_3d,lli_3d,llj_3d] = getindizes()
global const
%% Aufgabe 2 von Sifeng Li
%% lli = [2l+i] , llj = [2l+j]

n = const.n;

l0 = 0:n-1;
i0 = 0:3;

[i_tilde_2d,l_2d] = ndgrid(i0,l0);
lli_2d =2*l_2d+i_tilde_2d;


[i_tilde_3d,j_tilde_3d,l_3d] = ndgrid(i0,i0,l0);
lli_3d = 2*l_3d+i_tilde_3d;
llj_3d = 2*l_3d+j_tilde_3d;

end
