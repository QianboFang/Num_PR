function v_N = getvn()
global const 
%-------------------------------------------------------------------------
                        % Aufgabe 7 %
%-------------------------------------------------------------------------
n = const.n;
B = const.B;


    N = 2 * n + 2; % Maximale Anzahl an Dirichlet-Randbedingungen
    K3 = B(B(:,2) == 3, 1); % Extrahiere Positionen der K3-Elemente aus B
    K4 = B(B(:,2) == 4, 1); % Extrahiere Positionen der K4-Elemente aus B
    
    E3 = sparse(2 * K3 + 1, 1, 1, N, length(K3)); % Erstelle Matrix E3
    E4 = sparse(2 * K4 + 2, 1, 1, N, length(K4)); % Erstelle Matrix E4
    
    c3 = zeros(length(K3), 1); % Erstelle Vektor c3
    c4 = zeros(length(K4), 1); % Erstelle Vektor c4
    
    v_N = E3 * c3 + E4 * c4; % Berechne Vektor vN
end