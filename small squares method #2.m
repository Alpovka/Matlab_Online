clc;
x=[20.5 32.7 51 73.2 95.7];
y=[765 826 873 942 1032];
plot(x,y,'ro');
x_toplam=0;  xx_toplam=0;  y_toplam=0;  xy_toplam=0;

n=length(x);

for i=1:n
    x_toplam=x_toplam+x(i);
    xx_toplam=xx_toplam+x(i)*x(i);
    y_toplam=y_toplam+y(i);
    xy_toplam=xy_toplam+x(i)*y(i);
end
a=inv([n x_toplam ;x_toplam xx_toplam])*[y_toplam ;xy_toplam];
hold;

x=20.5:0.1:95.7;
y=a(1)+a(2)*x;
plot(x,y,'b');

y=a(1)+a(2)*25
grid;