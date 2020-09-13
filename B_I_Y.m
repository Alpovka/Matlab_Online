% BASÝT ÝTERASYON YÖNTEMÝ % % % % % % % % % % %
clc;
f = inline('x^2-3*x+1','x');
F = inline('sqrt(3*x-1)','x');
x0 = 2.5;
eps = 0.000001;

i=0;
while abs(f(x0))>eps
    i = i+1;
    x0 = F(x0);
    fprintf('\n%d.Iteration: x = %f',i,x0);
end
fprintf('\nResult: %f\n',x0);
fprintf('Iteration:%d\n',i);