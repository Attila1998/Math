A=[4 -8 20; 8 13 16; 20 16 -91];
b=[24;18;-119]

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
