function vq = getvq()
global const
%-------------------------------------------------------------------------
                           % Aufgabe 5 c %
%-------------------------------------------------------------------------
n = const.n;
qbar = getqbar();

vq = zeros(2*n + 2, 1); 
for i = 1:n
    vq(2*i-1:2*i+2) = vq(2*i-1:2*i+2) + qbar(:,:,1);
end

vq = sparse(vq);

end
