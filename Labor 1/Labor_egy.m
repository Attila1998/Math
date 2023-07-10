%f(x)=x^2 abrazolasa
clc;
x=2:0.01:10;
%f=x.*x;
%f=sin(x);
f=x.*x+sqrt(x)+sin(x)/log(x);
plot(x,f);
%axis ([xmin,xmax,ymin,ymax]);