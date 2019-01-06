A_1 = 15.98480422493;
A_2 = 3257.169444444444;
A_3 = -61.00961;
A = 58.1;
B = 6792.54;
C = -5.802;
D = 5.75;
P = 2494;

f = @(T)(A_1 - A_2./(T+A_3) - log(P));
g = @(T)(A - B./T + C.*log(T) + D.*P./T.^2 - log(P));

in = -A_3 ;

while sign(f(a))==sign(f(a+1))
    in = in + 1;
end

[biraiz, biniter] = biseccion(g, a, 1, 0.01);
[secraiz, secniter] = secante(g, a, 1, 5e-6);


fprintf('La temperatura de saturaci�n aproximada a 0.01 ser� %5.5fK seg�n la bisecci�n.\n', biraiz)
fprintf('\t Se han necesitado para esta aproximaci�n %i iteraciones.\n', biniter)
fprintf('La temperatura de saturaci�n aproximada a 5e-6 ser� %5.5fK seg�n el m�todo de la secante.\n', secraiz)
fprintf('\t Para la aplicaci�n de este m�todo se necesitaron %i iteraciones.\n', secniter)