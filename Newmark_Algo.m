function Newmark_Algo()
%-------------------------------------------------------------------------
                       % Aufgabe 12 und 14 %
%-------------------------------------------------------------------------
global const
close all;


qbar_0= getqbar_0();                % Aufgabe 12- I %
q_assmb_0 = getvq_0();              % Aufgabe 12- II %
v_E_0 = getve_0();                  % Aufgabe 12- III %
u = solveforalphae(); % entspricht alpha                 
du = u*0;       % entspricht alpha dot
ddu = u*0;      % entspricht alpha ddot

v_N = getvn();
v_D = getvd();

Me = getMe();
Se = getSe();
C = getC();

v_E = getve();

M_assmb = getM();
S_assmb = getS();
q_assmb = getvq();

idx=1:1:const.sys_DOF; % Zeitschrittvektor t
x=linspace(0,const.l,const.n+1); % über die Länge des Balkens
indices=1:2:const.sys_DOF;
nu=-u(end-1:end); 

%% NEWMARK ALGO ABLAUF

vq_t=0*q_assmb; % Setze vq(t)= 0 --> freie Schwingung, Lösung vereinfacht sich, Energieerhaltung bleibt erhalten
vN_t=0*q_assmb;

E_ges(1) =  0.5*u(idx)'*Se(idx,idx)*u(idx) + q_assmb(idx)'*u(idx) -  nu'*C'*u(idx);

i=1; 
TAU(1)= 0; 
h=x(2)-x(1);

vq_t=0*q_assmb; 
vN_t=Se*u -[C*nu;0;0] - [q_assmb;0;0]; 
for p = 0:const.eta:const.n_P-1
    i=i+1;
    TAU(i)=p;    
    v_E =  [vq_t;0;0] +  vN_t; 
    
    alphaS_P  = u  + (du * const.eta) + ((0.5 - const.beta) * ddu * (const.eta.^2));
    dalphaS_P = du + ((1 - const.gamma) * ddu * const.eta);
    
    ddu = (Me + Se * const.beta * (const.eta.^2)) \ (v_E - Se * alphaS_P);
    du = dalphaS_P + (const.gamma * ddu * const.eta);
    u = alphaS_P + (const.beta * ddu * (const.eta.^2));
    
    plot(x,u(indices));
    ylim([-1 1]); 
    xlabel('t in s');
    ylabel('w in m');
    title('Freie Schwingung des Balkens');
    drawnow update;
    
    vD_t=C'*u(idx);
    vN_t=(Me*ddu +  Se*u) -[C*nu;0;0] - [vq_t;0;0]; 
    
    E_ges(i) =  0.5*du(idx)'*Me(idx,idx)*du(idx) + 0.5*u(idx)'*Se(idx,idx)*u(idx) -  vq_t(idx)'*u(idx) - nu'*C'*u(idx) - vN_t(idx)'*u(idx);
end

plot(TAU,E_ges,"-r")
xlabel('t in s');
ylabel('E_ges in J');
ylim([0 0.1]);


end

