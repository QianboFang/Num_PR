function ddphi = getddphi()
global const

% AUfgabe 17 

n_tilde = const.n_tilde;

ddphi_1 = @(x) -6 + 12.*x;
ddphi_2 = @(x) -4 +6.*x;
ddphi_3 = @(x) 6 - 12.*x;
ddphi_4 = @(x) -2 + 6.*x;
x_k = linspace(0,1,n_tilde+1);
ddphi = [transpose(ddphi_1(x_k(:)));
    transpose(ddphi_2(x_k(:)));
    transpose(ddphi_3(x_k(:)));
    transpose(ddphi_4(x_k(:)))];
end