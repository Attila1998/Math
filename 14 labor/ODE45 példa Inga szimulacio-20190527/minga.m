%function yder=minga(f,y)
%g=9.814, l=1;
%yder=[y(2);-g/l*sin(y(1))];

func=@(x,y)2*x*y
h=0.1;
N=10;
y(1)=1;
x(1)=0;
for n=1:N
    k1=func(x(n),y(n));
    k2=func(x(n)+(h/2),y(n)+(1/2*k1*h));
    k3=func(x(n)+(1/2*h),y(n)+(1/2*k2*h));
    k4=func(x(n)+h,y(n)+(k3*h));
    y(n+1)=y(n)+1/6*(k1+(2*k2)+(2*k3)+k4)*h
    x(n+1)=x(n)+h;
end