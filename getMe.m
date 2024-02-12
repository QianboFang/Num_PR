function ME = getMe()
global const
%-------------------------------------------------------------------------
                       % Aufgabe 9 a %
%-------------------------------------------------------------------------


ME = blkdiag(getM(), zeros(2, 2)); % zeros (2,2) festlegen oder etwas?????
ME = sparse(ME);

end