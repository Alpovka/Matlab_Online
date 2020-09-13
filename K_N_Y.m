% Kesen Nokta Yöntemi % % % % % % % % % % % 
clc;
f = inline('','x');
x1 = 0;
x2 = 0;
eps = 0;
i = 0;

while abs(x2-x1)>eps
    i = i+1;
    x3 = (x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
    if f(x1)*f(x3)>0
        x1 = x3;
    else
        x2 = x3;
    end
end
fprintf('Son aralik = %f ; %f\n',x1,x2);
fprintf('Iteration = %d\n',i);

    