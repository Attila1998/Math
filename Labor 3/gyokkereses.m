function [x1,x2]=gyokkereses(fugv,a,b,dx)
%Meghatározza a f=fgv legkisebb gyokenek korlatait
%Bemenet:
%          fgv=f(x)
%           a,b-intervallum korl'tai
%           dx-novekmeny
%Kimenet:
%       A keretesett korlátok, NaN ha nincs gyok

if nargin<4 %ha kevesebb mint 4 parametere van
        dx=0.01;
end
x1=a;
x2=a+dx;
f1=feval(fugv,a);%f(a)
f2=feval(fugv,x2);%f(x2)
while f1*f2>0 %akkor van gyok ha f1 es f2 ellentetes elojeluek
       if x1>=b
           x1=NaN;
           x2=NaN;
           return;
       end
       x1=x2;
       f1=f2;
       x2=x1+dx;
       f2=feval(fugv,x2);
end
       