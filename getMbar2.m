function M_bar=getMbar2(n,mu,l,n_tilde)

% Aufgabe 19 
[~, Tinv_4d, ~] = getTinv(n,l,n_tilde);
[~, phi4di, phi4dj, ~] = getphi(n_tilde,n);
[~,h_l3d,~] = geth(n,l);
[~, expij] = getexp;
[~, ~, s_4d] = getstencil(n_tilde);



int = mu(Tinv_4d).*phi4di.*phi4dj.*s_4d;
int = sum(int,4);
exp = expij + 1;
h = h_l3d.^exp;
M_bar = h.*int;

end