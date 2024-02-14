function vq = getvq()
global const
%-------------------------------------------------------------------------
                           % Aufgabe 5 c %
%-------------------------------------------------------------------------

% Holen der Konstanten
n = const.n;
N = 2*n+2;

% Holen von qbar
qbar = getqbar();

% Holen der Indizes
[i_tilde_2d, l_2d, lli_2d, i_tilde_3d, j_tilde_3d, l_3d, lli_3d, llj_3d] = getindizes();


qbar_vec = reshape(qbar, [], 1);

% Erstellung der dünnbesetzten Matrix mit Hilfe der sparse-Funktion
vq = sparse(lli_2d+1, 1, qbar_vec, N, 1);
vq = full(vq);

end
