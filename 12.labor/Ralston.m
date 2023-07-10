func=@(x,y)-6*y;
h=0.1;
N=10;
y(1)=1;
x(1)=0;
for n=1:N
    k1=func(x(n),y(n));
    k2=func(x(n)+(3/4*h), y(n)+(3/4*h*k1));
    y(n+1)=y(n)+((k1/3)+((2*k2)/3))*h;
    x(n+1)=n*h;
end
plot(x,y)
