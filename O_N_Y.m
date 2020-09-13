% Orta Nokta Yöntemi % % % % % % % % % % % % % %
f = inline('3*(exp(1)^(-0.5*x))-x','x');
clc;
x1=0 ; x2=5 ; eps=0.000001;
i=0;
while abs(x1-x2)>eps
    i=i+1;
    x3=(x1+x2)/2;
    if (f(x1)*f(x3))>0
        x2 = x3;
    else
        x1 = x3;
    end
    fprintf('%d.Iteration: %f  %f\n',i,x1,x2);
end 
fprintf('Son aralik =%f  %f\n',x1,x2);
fprintf('Iterasyon =%d\n',i);