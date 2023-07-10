c=3;
func=@(x)c.*x.*(1-x);
D=0:0.01:1;
N=10;
iteracio(D,func,N);