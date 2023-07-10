x=[0 0.5 1 1.5 2 2.5 3];
y=[1.8421 2.4694 2.4921 1.9047 0.8509 -0.4112 -1.5727];

disp([x;y])
u = .75:.05:6.25;
v = polinominterp(x,y,u);
plot(x,y,'o',u,v,'r-');

%u=sym('x');
%P = polinominterp(x,y,u)
%pretty(P)
%P=simplify(P)