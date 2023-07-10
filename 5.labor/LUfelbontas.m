function A=LUfelbontas(A)
A=[2 -2 0 0 0; -2 5 -6 0 0; 0 -6 16 12 0; 0 0 12 39 0; 0 0 0 -6 14];
n=size(A,1);
for k = 1:n-1
    for i=k+1:n
        if A(i,k)~=0.0
            lambda = A(i,k)/A(k,k);
            A(i,k+1:n) = A(i,k+1:n) - lambda*A(k,k+1:n);
            A(i,k)=lambda;
        end
    end
end

