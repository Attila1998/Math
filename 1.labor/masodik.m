function masodik(a)
clc;
x=0.0001:0.01:2;
y=x.^a.*sin(1./x.^a);
plot(x,y);
end