
function  megoldas = jacobi1(A,b, x0, tol,maxIter)
    n=size(A,1);
    k=0;
    while k <= maxIter
        for i=1:n
            for j=1:n
                si =0;
                if j~=i
                    si=si-A(i,j)*x0(j)
                end
            end
            
            x(i)=1/A(i,i)+ * (sum);
        end
        if (dot(x-x0,x-x0))<tol^2
            return;
        else
            k=k+1;
            x0=x;
        end
    end
    megoldas=x;
end