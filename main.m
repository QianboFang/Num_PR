clc
clear
%-------------------------------------------------------------------------
                   % Funktionen und Aufgabenummer %
%-------------------------------------------------------------------------

%% Erster Projektteil - Konstante Parameter
const = Parameters();               % Aufgabe 1 | Aufgabe 15    
[i_tilde_2d,l_2d,lli_2d,i_tilde_3d,j_tilde_3d,l_3d,lli_3d,llj_3d,I_v,L_v,ll_i_v] = getindizes();
                                    % Aufgabe 2                
%-------------------------------------------------------------------------
M_bar = getMbar();                  % Aufgabe 3 a | % Aufgabe 4 a
S_bar = getSbar();                  % Aufgabe 3 b | % Aufgabe 4 b
q_bar = getqbar();                  % Aufgabe 3 c | % Aufgabe 4 c
%-------------------------------------------------------------------------
M = getM();                         % Aufgabe 5 a
S = getS();                         % Aufgabe 5 b
vq = getvq();                       % Aufgabe 5 c
%-------------------------------------------------------------------------
C = getC(); %Nebenbedingungsmatrix  % Aufgabe 6
v_N = getvn();                      % Aufgabe 7
v_D = getvd();                      % Aufgabe 8
%-------------------------------------------------------------------------
ME = getMe();                       % Aufgabe 9 a
SE = getSe();                       % Aufgabe 9 b
vE = getve();                       % Aufgabe 9 c
%-------------------------------------------------------------------------
alpha_e = solveforalphae();         % Aufgabe 10
omega = getplot();                  % Aufgabe 11
%-------------------------------------------------------------------------
                        % Newmark-Algorithmus %
%-------------------------------------------------------------------------
Newmark_Algo();                     % Aufgabe 12 | Aufgabe 14
L2_error = error_plot_13();         % Aufgabe 13

%% Zweiter Projektteil - Ortsabhängige Parameter

[s, s_3d, s_4d] = getstencil(n_tilde);                  % Aufgabe 16| Aufgabe  18 e
[phi, phi4di, phi4dj, phi3di_v] = getphi();             % Aufgabe 17 a | Aufgabe  18 a
[ddphi, ddphi4di, ddphi4dj, ddphi3di_v] = getddphi();   % Aufgabe 17 b | Aufgabe  18 b
[h_l2d,h_l3d,h] = geth();                               % Aufgabe 17 c | Aufgabe  18 c
[Tinv_3d, Tinv_4d, Tinv] = getTinv();                   % Aufgabe 17 d | Aufgabe  18 d
[expi_v, expij] = getexp;                               % Aufgabe 17 e


;                              % Aufgabe 19 a
;                               % Aufgabe 19 b
getplot()                       % Aufgabe 20