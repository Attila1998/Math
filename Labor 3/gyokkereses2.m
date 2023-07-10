function gyokkereses2(func,a,b,dx)
x=a:dx:b;
f=func(x);
for i=1:lenght(x)-1
    if sign(f(i))~=sign(f(i+1))
        kiiratas%meg kell irni
    end
end
end