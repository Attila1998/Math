clear all;
clc;

A = randi([1,10],[100,100])
b = randi([1,10],[100,1])

n=size(A,1);
x=zeros(n,1);
l=zeros(n);

for k=1:n
    for i=k+1:n
        l(i,k)=A(i,k)/A(k,k);
        b(i)=b(i)-l(i,k)*b(k);
        for j=k:n
            A(i,j)=A(i,j)-l(i,k)*A(k,j);
        end
    end
end

x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    s=0;
    for j=i+1:n
        s=s+A(i,j)*x(j);
    end
x(i)=(b(i)-s)/A(i,i);
end

x
A\b
% tic()
% toc()
