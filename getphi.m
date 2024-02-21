function phi = getphi()
global const

% Aufgabe 17 
n_tilde = const.n_tilde;

phi_1 = @(x) 1 - 3.*x.^2 + 2.*x.^3;
phi_2 = @(x) x - 2.*x.^2 + x.^3;
phi_3 = @(x) 3.*x.^2 - 2.*x.^3;
phi_4 = @(x) -x.^2 + x.^3;
x_k = linspace(0,1,n_tilde+1);
phi = [transpose(phi_1(x_k(:)));
    transpose(phi_2(x_k(:)));
    transpose(phi_3(x_k(:)));
    transpose(phi_4(x_k(:)))];

end