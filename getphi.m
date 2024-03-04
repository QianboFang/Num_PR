function phi = getphi()
global const

% Aufgabe 17 
n_tilde = const.n_tilde;
n = conct.n;

phi_1 = @(x) 1 - 3.*x.^2 + 2.*x.^3;
phi_2 = @(x) x - 2.*x.^2 + x.^3;
phi_3 = @(x) 3.*x.^2 - 2.*x.^3;
phi_4 = @(x) -x.^2 + x.^3;
x_k = linspace(0,1,n_tilde+1);
phi = [transpose(phi_1(x_k(:)));
    transpose(phi_2(x_k(:)));
    transpose(phi_3(x_k(:)));
    transpose(phi_4(x_k(:)))];

% Aufgabe 18 
[~,~,~,i,j,~,~,~,i_v,~,~] = getindizes(); % die Indizes werden aufgerufen
phi4di = reshape(phi(i,:),4,4,n,n_tilde+1);
phi4dj = reshape(phi(j,:),4,4,n,n_tilde+1);
phi3di_v = reshape(phi(i_v,:),4,n,n_tilde+1);

end
