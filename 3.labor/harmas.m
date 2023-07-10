clear;
clc;
eps=10^(-3);
n=1;
Sn=0;
while (2/sqrt(n)>=eps)
    Sn=Sn+1/sqrt(n^3);
    n=n+1;
end
Sn
n
zeta(3/2)