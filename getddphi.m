function ddphi = getddphi()
global const

% AUfgabe 17 

n_tilde = const.n_tilde;
n = const.n;

ddphi_1 = @(x) -6 + 12.*x;
ddphi_2 = @(x) -4 +6.*x;
ddphi_3 = @(x) 6 - 12.*x;
ddphi_4 = @(x) -2 + 6.*x;
x_k = linspace(0,1,n_tilde+1);
ddphi = [transpose(ddphi_1(x_k(:)));
    transpose(ddphi_2(x_k(:)));
    transpose(ddphi_3(x_k(:)));
    transpose(ddphi_4(x_k(:)))];

% Aufgabe 18
[~,~,~,i,j,~,~,~,i_v,~,~] = getindizes();
ddphi4di = reshape(ddphi(i,:),4,4,n,n_tilde+1);
ddphi4dj = reshape(ddphi(j,:),4,4,n,n_tilde+1);
ddphi3di_v = reshape(ddphi(i_v,:),4,n,n_tilde+1);

end
