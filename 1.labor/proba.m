clc;
x = 2:1:10;
y = (x.^2) + sqrt(x) + sin(x)./log(x);
plot(x,y);