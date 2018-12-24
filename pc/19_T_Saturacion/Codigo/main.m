A_1 = 15.98480422493;
A_2 = 3257.169444444444;
A_3 = -61.00961;
A = 58.1;
B = 6792.54;
C = -5.802;
D = 5.75;
P = 2494;

f = @(T)(A_1 - A_2./(T+A_3) - log(P));
g = @(T)(A - B/T + C.*log(T) + D*P/T.^2 - log(P));

a = -A_3+1;
while sign(f(a))==sign(f(a+1))
    a = a + 1;
end

[biraiz, biniter] = biseccion(g, a, 1, 5e-7);
[secraiz, secniter] = secante(g, a, 1, 5e-5);

fprintf('La temperatura de saturación aproximada a 0.01 será %5.5fK según la bisección.\n', biraiz)
fprintf('\t Se han necesitado para esta aproximación %i iteraciones.\n', biniter)
fprintf('La temperatura de saturación aproximada a 5e-5 será %5.5fK según el método de la secante.\n', secraiz)
fprintf('\t Para la aplicación de este método se necesitaron %i iteraciones.\n', secniter)