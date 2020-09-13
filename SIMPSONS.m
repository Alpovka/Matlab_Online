
close all
clear all
disp(' ');
disp('This program will calculate the approximate integral');
disp(' ');
lower=0;
upper=pi/2;
N=4;
% % lower=input('�ntegralin D���k (ba�lang��) de�erini gir: '); %lower value of integral
% % upper=input('�ntegralin B�y�k (son) de�erini gir: '); %top value of integral
% % N=input('Soruda verilen kullanmak istedi�in N say�s�n� gir ');
deltax=(upper-lower)/N;
x=[lower:deltax:upper]; %creates a vector of n+1 evenly spaced points
% % A�a��da denklemi girin :)
f = @(x) 220*sqrt(2)*sin(x);
%SIMPSONS RULE

if numel(f)>1 % If the input provided is a vector
    N=numel(f)-1;
    sr= deltax/3*(f(1)+2*sum(f(3:2:end-2))+4*sum(f(2:2:end))+f(end));
else % If the input provided is an anonymous function
    sr= deltax/3*(f(x(1))+2*sum(f(x(3:2:end-2)))+4*sum(f(x(2:2:end)))+f(x(end)));
end

%fprintf for results.  
disp(' ');
fprintf('Simpsons Rule approximation = %f.\n',sr);
% BU PROGRAMDA SADECE SIMPSONS Y�NTEM� VARDIR 
disp('E�ER TRANSPEZ� Bulmak isterseniz -->https://atozmath.com/Default.aspx?q1=Trapezoidal%20Simpson%20rule%2C%201%2Fx%2C%20%5B1%2C2%5D%2C%20N%3D5`583&do=1');