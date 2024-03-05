function q_bar = getqbar2(q,n,l,n_tilde)

% Aufgabe 19
[~,Tinv_4d,~] = getTinv(n,l,n_tilde);
[~,~,~,phi3di_v] = getphi(n_tilde,n);
[~,h_l3d,~] = geth(n,l);
[expi_v,~] = getexp;
[~,~, s_4d] = getstencil(n_tilde);

int = q(Tinv_4d).*phi3di_v.*s_4d;
int = sum(int,4);
exp = expi_v + 1; 
h = h_l3d.^exp;
q_bar = h.*int;

end

