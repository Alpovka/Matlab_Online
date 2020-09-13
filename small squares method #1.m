
%a= [5 -2 1; 1 4 -2; 1 2 4]; b=[4 ;3 ;17];  
%q =inv(a)*b;
%fprintf('%d\n ',q);

A = [2 5 6 9];
B = [4 6 7 8];

value = interp1(A,B,8);
value

myIm = imread('myPic.PNG');

figure(1)
image(myIm)