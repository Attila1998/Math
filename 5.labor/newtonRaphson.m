function gyok = newtonRaphson(func,x,tol)
if nargin == 2
    tol = 1.0e4*eps;
end
if size(x,1) == 1
    x=x';
end
for i=1:30
    [jac,f0]=jacobian(func,x);
    if sqrt(dot(f0,f0)/lenght(x))<tol
        root = x;
        return;
    end
    
    if sqrt(dot(dx,dx)/length(x)) < tol*max(abs(x),1.0)
        root = x;
        return
    end
end
error('Tul sok iteracio')