function C = getC()

global const
n = const.n;
B = const.B;

N = 2*n + 2; % maximale Anzahl an Dirichlet-NB

K1 = B(B(:,2) == 1,1); % Postion der Dirichlet-NB aus B-Matrix
K2 = B(B(:,2) == 2,1);

N1 = length(K1); 
N2 = length(K2);

E1 = sparse(K1*2 + 1,1:N1,1,N,N1); % Erstlellen der Matrizen E1 und E2
E2 = sparse(K2*2 +2,1:N2,1,N,N2);

C = [E1,E2]; % Nebenbedingungsmatrix C

end     
