function [A_assmb,PHI] = getA()

global const

%---------------------------------------------------------------%
v = ones(const.n,1);
A = (const.h/420).*[156 22*const.h 54 -13*const.h;...
    22*const.h 4*const.h.^2 13*const.h -3*const.h.^2;...
    54 13*const.h 156 -22*const.h;...
    -13*const.h -3*const.h.^2 -22*const.h 4*const.h.^2];

mloc0 = getConst_Me(1); %  ( Globale Massenmatrix für h = 1 )

Abar = reshape(kron(A,v),4,4,const.n);
phi = reshape(kron(mloc0,v),4,4,const.n);
 
[i_tilde_2d, l_2d, lli_2d, i_tilde_3d, j_tilde_3d, l_3d, lli_3d, llj_3d] = getindizes();

A_assmb = sparse(lli_3d(:)+1,llj_3d(:)+1,Abar(:),const.sys_DOF,const.sys_DOF);

% PHI ist die assemblierte Massenmatrix für h = 1
PHI = sparse(lli_3d(:)+1,llj_3d(:)+1,phi(:),const.sys_DOF,const.sys_DOF); 


end
