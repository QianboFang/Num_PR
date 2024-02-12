function omega = getplot()
global const
%-------------------------------------------------------------------------
                        % Aufgabe 11 %
%-------------------------------------------------------------------------
alpha_E = solveforalphae();
x = linspace(0,const.l,const.n+1); % Entlang des Balkens
indices=0:2:(2*const.n);
omega = alpha_E(indices+1);
%--------------------------Plotten -----------------------------------------
plot(x,omega,'k')
xlabel('x in m');
ylabel('w in m');
title(['Approximierte Biegelinie für n Elmentenanzahl = ', num2str(const.n)]);

end