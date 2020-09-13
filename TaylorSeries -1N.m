
x=pi/3:0.1:15; 
y=3*(exp(1).^(-0.5*x))-sin(x);

turev=[];
  for i=1:i<2
     turev=[turev (1/(2*0.1))*(-3*y(i)+4*y(i+1)-y(i+2))]; 
 end
fprintf('%f\n',turev);