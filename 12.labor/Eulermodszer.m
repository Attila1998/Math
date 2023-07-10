func=@(x,y)-6*y;
h=0.1;
N=10;
y(1)=1;
x(1)=0;
for n=1:N
    y(n+1)=y(n)+h*(func(x(n),y(n)));
    x(n+1)=n*h;
end
plot(x,y)