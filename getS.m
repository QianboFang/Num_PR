function S=getS()
global const
%-------------------------------------------------------------------------
                           % Aufgabe 5 b %
%-------------------------------------------------------------------------
n = const.n;
Sbar = getSbar();

S=zeros(2*n+2); 
for i=1:n
    S(2*i-1:2*i+2, 2*i-1:2*i+2)=S(2*i-1:2*i+2, 2*i-1:2*i+2)+ Sbar(:,:,1);
end
end