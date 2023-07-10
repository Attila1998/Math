func=@(x,y)-6*y
h=0.1;
N=10;
x(1)=0;
y(1)=1;
for n=1:N
    %k1 = -6*(y(n));
    %k2 = f(x(n)+h,y(n)+h*k1);
    k1=func(x(n),y(n));
    k2=fun(x(n)+h , y(n)+(k1*h));
    y(n+1)= y(n)+h/2 * (k1 + k2);
    x(n+1) = n *h
end

plot(x,y);
    

