clear;
clc;
eps=10^(-3);
n=1;
Sn=0;
while (1/sqrt(n+1)>=eps)
    Sn=Sn+(-1)^(n-1)/sqrt(n);
    n=n+1;
    
end
Sn
n