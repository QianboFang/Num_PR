function SE = getSe()
global const
%-------------------------------------------------------------------------
                       % Aufgabe 9 b %
%-------------------------------------------------------------------------
S_assmb = getS();
C = getC();

SE_1 = horzcat(S_assmb, C);
SE_2 = horzcat(C.', zeros(2, 2));
SE = vertcat(SE_1, SE_2);
SE = sparse(SE);

end
