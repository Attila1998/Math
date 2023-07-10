x=1:6;
y=[16 18 21 17 15 12];
disp([x;y])
u=.75:.05:6.25;
v=polinominterp(x,y,u);
plot(x,y,'o',u,v,'r-');