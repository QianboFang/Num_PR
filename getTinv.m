function Tinv = getTinv()
global const

% Aufgabe 17

n = const.n;
l = const.l;
n_tilde = const.n_tilde;

x_k = linspace(0,1,n_tilde+1);
x = linspace(0,l,n+1);
x_l = x(1:end-1);
Tinv = geth().*x_k + transpose(x_l) ;
end