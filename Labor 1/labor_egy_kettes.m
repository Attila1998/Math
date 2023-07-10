clc;
a=2;
x=2:0.01:10;
f=(x.^a).*(sin(1./x.^a));
plot(x,f);
