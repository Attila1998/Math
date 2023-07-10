function Ih = Simpson2(func,a,b,I2h,k)
if k==1
    fa=feval(func,a);
    fb=feval(func,b);
else
    n=2^(k-2);
    h=(b-a)/n;
    x=a+h/2.0;
    sum=0.0;
    for i=2:n-1
        if mod(i,2)==0
            sum=sum+4*feval(func,x);
        else
            sum=sum+2*feval(func,x);
        end
    end
    Ih=(I2h+h*sum)/2.0;
end