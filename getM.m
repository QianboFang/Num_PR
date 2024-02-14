function M = getM()
global const
%-------------------------------------------------------------------------
                           % Aufgabe 5 a %
%-------------------------------------------------------------------------

% Holen der Konstanten
n = const.n;
N = 2*n+2;

% Holen von Mbar
Mbar = getMbar();

% Holen der Indizes
[i_tilde_2d, l_2d, lli_2d, i_tilde_3d, j_tilde_3d, l_3d, lli_3d, llj_3d] = getindizes();

% Umformen der dreidimensionalen Matrizen zu Spaltenvektoren
lli_3d_vec = reshape(lli_3d, [], 1);
llj_3d_vec = reshape(llj_3d, [], 1);
Mbar_vec = reshape(Mbar, [], 1);

% Erstellung der dünnbesetzten Matrix mit Hilfe der sparse-Funktion
M = sparse(lli_3d_vec+1, llj_3d_vec+1, Mbar_vec, N, N);

end
