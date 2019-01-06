function [raiz, niter] = ...
    biseccion(fun, a, amp, toler)
b = a + amp;
niter = 0;
if fun(a)==0
    raiz = a;
end
if fun(b)==0
    raiz = b;
end
raiz = (a+b)*0.5;
while abs(a-b) > toler
    niter = niter + 1;
    raiz = (a+b)*0.5;
    if sign(fun(a)) == sign(fun(raiz))
        a = raiz;
    else
        b = raiz;
    end
    raiz = (a+b)*0.5;
end

end

