function L2_error = error_plot_13()
global const

% Aufgabe 13 Konvergenzanalyse
%-------------------------------------------------------------------------
% getConst_Me -> berechnet Elementmassenmatrix für konstantes h
% function update_parameterconst -> aktualisiert alle const-Parameter. erforderlich für die Konvergenzschleife
%-------------------------------------------------------------------------

% Analytische Lösung des Biegebalkens
w_anaf = @(x, q, L) q * ((x.^4) / 24 - (L * x.^3) / 6 + (L^2 * x.^2) / 4);
dw_anaf = @(x, q, L) q * ((x.^3) / 6 - (L * x.^2) / 2 + (L^2 * x) / 2);

% Initalisierung für die Schleife
%-------------------------------------------------------------------------
n_values = 10; % max 12, da bei 12 e=4096 Elemente
L2_error = zeros(n_values, 1);
e = zeros(n_values, 1);

for i_n = 1:n_values
    e(i_n) = 2 * 2^(i_n - 1); % Anzahl der Elemente -> 2 4 8 16 ...
    update_Parameters(e(i_n)); % Anpassung der Elementenanzahl und anderer Parameter
    
    % Statische Lösung
    alpha_E = solveforalphae(); % Statische Lösung: alpha_E = Se \ v_E
    
    % Gleichung analytisch und numerisch an die Integrationspunkte projizieren
    [A_assmb, PHI] = getA(); % PHI ist die assemblierte Massenmatrix für h=1
    
    % Für Debugging bei sehr kleinen e, sonst unsinnig
    X_P = PHI(1:2:end, 1:2:end) * (0:const.h:const.l)'; % Interpolierte x-Werte
    w = w_anaf(X_P, 1, 1); % Analytische Lösung
    alpha_projiziert = PHI(1:2:end, 1:2:end) * alpha_E(1:2:end-3); % Projizierte numerische Lösung
    diff_EP = w_anaf(X_P, 1, 1) - alpha_projiziert; % Differenz zwischen analytischer und projizierter Lösung
    
    % L2-Fehler berechnen
    L2_error(i_n) = sqrt(diff_EP' * A_assmb(1:2:end, 1:2:end) * diff_EP) / sqrt(w' * A_assmb(1:2:end, 1:2:end) * w);
end

% Erstes Diagramm
figure(1);
subplot(1, 2, 1)
plot(e, L2_error);
xlabel('Knotenanzahl n in 1');
ylabel('Fehler in 1');
title('Relativer Fehler über der Knotenzahl');

% Zweites Diagramm (log-log)
subplot(2, 2, 2)
loglog(e, L2_error);
xlabel('log n in 1');
ylabel('log Fehler in 1');
title('Relativer Fehler über der Knotenzahl in log-log-Diagramm');
end
