function  const = Parameters()

global const

const = struct();


% Initialisierung der Startswerte
const.n = 3;         % Anzahl der Elemente in 1
const.n_hat = 1;      % Anzahl der zusätzlichen Auswertungspunkte je Element
const.n_tilde = 7;    % Ordnung der Quadratur
const.n_P = 100;      % Anzahl der Zeitschritte
const.beta = 0.25;    % Newmark-Koeffizient
const.gamma = 0.5;    % Newmark-Koeffizient
const.eta = 0.1;     % Zeitschrittweite in s
const.l = 1;          % Länge des Balkens in m
const.mu = 1;         % Längenspezifische Masse in kg
const.E = 1;          % Elastizitätsmodul in N/m^2
const.I = 1;        % Flächenträgheitsmoment in m^4
const.h = const.l/const.n; % Äquidistante Knoten/ die Elementbreite
const.q = 1 ;       % Streckenlast in N/m 

const.B = [0 1 0;
            0 2 0;
      const.n 3 0;
      const.n 4 0];

end