function M_bar=getMbar2()
global const




%% Aufgabe 19 

n = const.n;
mu = const.mufun;
l = const.l;
n_tilde = const.n_tilde;



[~, Tinv_4d, ~] = getTinv();
[~, phi4di, phi4dj, ~] = getphi();
[~,h_l3d,~] = geth();
[~, expij] = getexp;
[~, ~, s_4d] = getstencil();



int = mu(Tinv_4d).*phi4di.*phi4dj.*s_4d;
int = sum(int,4);
exp = expij + 1;
h = h_l3d.^exp;
M_bar = h.*int;

end
