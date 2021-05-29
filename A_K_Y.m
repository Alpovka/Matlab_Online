% STEP REDUCTION METHOD % % % % % % % % % % %

clc;
f = inline('(x^3)+(x^2)*(0.8+1.54)+x*(0.8*1.54-2.4)-(2.4*1.54)','x');
x0 = -0.4;
h = 2;
a = 3;
eps = 0.001;
i = 0;

while h>eps
   i = i+1;
   if (f(x0)*f(x0+h))>0
       x0 = x0 + h;
   else
     h = h/a;
   end
   fprintf('\n%d.Iteration: h = %f',i,h);
end
fprintf('\nResult: %f\n',x0);
fprintf('Iteration: %d\n',i);



