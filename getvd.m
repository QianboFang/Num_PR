function v_d = getvd(B)

a = B(B(:,2) == 1,3); % Werte der Dirichlet-NB aus B-Matrix
b = B(B(:,2) == 2,3);

v = [a;b];

v_d = sparse(v);

end