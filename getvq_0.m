function q_assmb_0 = getvq_0()

global const
%-------------------------------------------------------------------------

[i_tilde_2d, l_2d, lli_2d, i_tilde_3d, j_tilde_3d, l_3d, lli_3d, llj_3d] = getindizes();

qbar_0 = getqbar_0();
qbar_0 = reshape(qbar_0,[],1);
q_assmb_0 = sparse(lli_2d+1,1,const.eta *qbar_0);



end 