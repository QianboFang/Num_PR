function qbar_0= getqbar_0() 

global const

%-------------------------------------------------------------------------
                        % Aufgabe 12 %
%-------------------------------------------------------------------------
h = const.h;
q = const.q;
n = const.n;


q_bar = (0*q*h/12)*[6; %%0
                  h;
                  6;
                 -h;];

qbar_0 = repmat(q_bar,[1,1,n]);
end