function S=getS()
global const
%-------------------------------------------------------------------------
                           % Aufgabe 5 b %
%-------------------------------------------------------------------------

% Holen der Konstanten
n = const.n;
N = 2*n+2;

% Holen von Sbar
Sbar = getSbar();

% Holen der Indizes
[i_tilde_2d, l_2d, lli_2d, i_tilde_3d, j_tilde_3d, l_3d, lli_3d, llj_3d] = getindizes();

% Umformen der dreidimensionalen Matrizen zu Spaltenvektoren
lli_3d_vec = reshape(lli_3d, [], 1);
llj_3d_vec = reshape(llj_3d, [], 1);
Sbar_vec = reshape(Sbar, [], 1);

% Erstellung der dünnbesetzten Matrix mit Hilfe der sparse-Funktion
S = sparse(lli_3d_vec+1, llj_3d_vec+1, Sbar_vec, N, N);

end
