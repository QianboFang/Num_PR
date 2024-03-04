function [Tinv_3d, Tinv_4d, Tinv] = getTinv()
global const

% Aufgabe 17

n = const.n;
l = const.l;
n_tilde = const.n_tilde;

x_k = linspace(0,1,n_tilde+1);
x = linspace(0,l,n+1);
x_l = transpose(x(1:end-1));
[~,~,h] = geth();
Tinv = h.*x_k + x_l;

% Aufgabe 18
Tinv_3d = reshape(Tinv,1,n,n_tilde+1);
Tinv_4d = reshape(Tinv,1,1,n,n_tilde+1);

end
