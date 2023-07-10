function Ih = trapezRek(func,a,b,I2h,k)

if k == 1
    fa = feval(func,a);
    fb = feval(func,b);
    Ih = (fa + fb)*(b - a)/2.0;
else
n = 2^(k -2 );
h = (b - a)/n ; 
x = a + h/2.0; 
sum = 0.0;
for i = 1:n
    fx = feval(func,x);
    sum = sum + fx;
    x = x + h;
end
    Ih = (I2h + h*sum)/2.0;
end