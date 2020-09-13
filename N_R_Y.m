% NEWTON RAPHSON YÖNTEMÝ % % % % % % % % % % % %

f= inline('x^7-2*sin(x)+x^2','x');
clc;
x0 = pi/4;
h = 0.1;
eps = 0.000001;

i = 0;
while abs(f(x0))>eps
    i=i+1;
    ft = (f(x0+h)-f(x0))/h;
    x0 = x0-(f(x0)/ft);
    fprintf('%d.Iteration: %f  %f\n',i,ft,x0);
end
fprintf('Result: %f ; %f\n',ft,x0);
fprintf('Iteration: %d\n',i);










