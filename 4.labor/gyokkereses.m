function[x1,x2] = gyokkereses(func,a,b,dx)
    x1=a;
    f1=feval(func,x1);
    x2=a+dx;
    f2=feval(func,x2);
    while f1*f2>0.0
        if x1>=b
            x1=NaN;
            x2=NaN;
            return
        end
        x1=x2;
        x2=x1+dx;
        f1=f2;
        f2=feval(func,x2);
    end
end