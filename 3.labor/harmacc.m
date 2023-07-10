clear;
clc;
eps=10^(-3);
n=1;
Sn=0;
while ((n+1)*n/factorial(n-1)*(n^2-n+1)>= eps)
    Sn=Sn+n^2/factorial(n);
    n=n+1;
    
end
Sn
n