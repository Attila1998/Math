syms=sym('x');
x=[0 0.5 1 1.5 2 2.5 3];
y=[1.8421 2.4694 2.4921 1.9047 0.8509 (-0.4112) (-1.5727)];
P=polinominterp(x,y,syms)
pretty(P)
P=simplify(P)