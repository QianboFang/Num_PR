function h = geth()
global const

% Aufgabe 17 

n = const.n;
l = const.l;

x = linspace(0,l,n+1);
h = transpose(x(2:end) - x(1:end-1));

end