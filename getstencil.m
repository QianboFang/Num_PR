function [s, s_3d, s_4d] = getstencil(n)
%%  Aufgabe 16

i_hat = 0:n; i_hat = i_hat(:);
V_hat = 1./(1+i_hat);

x_hat = 0:1/n:1; x_hat = x_hat(:);
V = x_hat.^repmat(0:n,n+1,1);
s = V'\(V_hat);
s = s';

% Aufgabe 18
s_3d = reshape(s,1,1,n_tilde+1);
s_4d = reshape(s,1,1,1,n_tilde+1);

end
