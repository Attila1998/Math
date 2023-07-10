x=[0,1,2,3,4,5,6,7,8,9];
y=[-2,3,1,0,1,7,-3,-2,5,10];

xx=0:0.1:10;
yy1=interp1(x,y,xx,'linear');
yy2=interp1(x,y,xx,'spline');
yy3=interp1(x,y,xx,'nearest');
yy4=interp1(x,y,xx,'pchip');
yy5=interp1(x,y,xx,'cubic');
hold on;
plot(xx,yy2,x,y,'ro');
plot(xx,yy1,'k');
plot(xx,yy3,'g');
plot(xx,yy4,'m');
plot(xx,yy5,'y');