function S_bar= getSbar2(E,I,n,l,n_tilde)

% Aufgabe 19 
[~, Tinv_4d, ~] = getTinv(n,l,n_tilde);
[~, ddphi4di, ddphi4dj, ~] = getddphi(n_tilde,n);
[~,h_l3d,~] = geth(n,l);
[~, expij] = getexp;
[~, ~, s_4d] = getstencil(n_tilde);

int = (E(Tinv_4d).*I(Tinv_4d).*ddphi4di.*ddphi4dj).*s_4d;
int = sum(int,4);
exp = expij - 3; 
h = h_l3d.^exp;
S_bar = h.*int;

end