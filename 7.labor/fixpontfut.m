c=4;
func=@(x)c.*x.*(1-x);
D=0:0.01:1;
x0=0.2;
N=10;
fixpont(D,func,N,x0);