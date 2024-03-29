function [i_tilde_2d,l_2d,lli_2d,i_tilde_3d,j_tilde_3d,l_3d,lli_3d,llj_3d,I_v,L_v,ll_i_v] = getindizes()
global const
%% Aufgabe 2 von Sifeng Li
%% lli = [2l+i] , llj = [2l+j]

n = const.n;

l0 = 1:n;
i0 = 1:4;

[i_tilde_2d,l_2d] = ndgrid(i0,l0);
lli_2d =2*l_2d+i_tilde_2d;


[i_tilde_3d,j_tilde_3d,l_3d] = ndgrid(i0,i0,l0);
lli_3d = 2*l_3d+i_tilde_3d;
llj_3d = 2*l_3d+j_tilde_3d;

[I_v,~,L_v] = ndgrid(i0,0,l0);
ll_i_v = 2*L_v + I_v;

end
