clear;
clc;
eps=10^(-3);
n=1;
Sn=0;
while (2^(n+1)/factorial(n)*(n-1)>=eps)
    Sn=Sn+2^n/factorial(n);
    n=n+1;
    
end
Sn
n