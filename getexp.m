function exp = getexp

% Aufgabe 17

[~,~,~,i,j,~,~,~] = getindizes();
exp = (i == 2 | i == 4) + (j == 2 | j == 4);

end