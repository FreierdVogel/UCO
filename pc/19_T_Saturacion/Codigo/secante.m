function [raiz, niter] = secante(f, x1, amp, toler)
niter = 0;
x2 = x1 + amp;
while abs(x1-x2)>toler
    niter = niter + 1;
    raiz = -f(x2)*(x2-x1)/(f(x2)-f(x1)) + x2;
    x1 = x2;
    x2 = raiz;

end
end