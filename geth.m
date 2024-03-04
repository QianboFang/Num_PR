function [h_l2d,h_l3d,h] = geth()
global const

% Aufgabe 17 

n = const.n;
l = const.l;

x = linspace(0,l,n+1);
h = (x(2:end) - x(1:end-1))';
% Aufgabe 18
h_l2d = reshape(h,1,n);
h_l3d = reshape(h,1,1,n);

end
