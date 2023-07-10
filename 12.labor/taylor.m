function [xSol,ySol] = taylor(deriv,x,y,xStop,h)
if size(y,1)>1
   y=y';
end
xSol=zeros(2,1);
ySol=zeros(2,length(y));
xSol(1)=x;
ySol(1,:)=y;
k=1;
while x < xStop
    h=min(h,xStop-x);
    d=feval(deriv,x,y);
    a=1;
    for j=1:4
        a=a*h/j;
        y=y+d(j,:)*a;
    end
end
x=x+h;
k=k+1;
xSol(k)=x;
ySol(k,:)=y;
end