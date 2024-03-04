function [expi_v, expij] = getexp

% Aufgabe 17

[~,~,~,i,j,~,~,~,i_v,~,~] = getindizes();
expi_v = (i_v == 2 | i_v == 4);
expij = (i == 2| i == 4) + (j == 2 | j == 4);

end
