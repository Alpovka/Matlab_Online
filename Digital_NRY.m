% SAYISAL NRY % % % % % % % % % % 
f = inline('-x^2+10*(exp(1)^(-x))-1.06','x');
clc;
x0 = -2;
h = 0.1;
eps = 0.000001;
i = 0;

while abs(f(x0))>eps
    i=i+1;
    ft = (f(x0+h)-f(x0))/h;
    x0 = x0-((f(x0)/ft));
end
fprintf('Result: %f ; %f\n',ft,x0);
fprintf('Iteration: %d\n',i);

