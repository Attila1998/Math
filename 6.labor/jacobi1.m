%tolerancia szama,x0 kezdovektor,Iter-iteracio szam
%~= nem egyenlo
function megoldas = jacobi1(A,b,x0,tol,maxIter)
    n=size(A,1);
    k=0;
    while k<=maxIter
        for i=1:n
            si=0;
            for j=1:n
                if j~=i
                    si=si-A(i,j)*x0(j);
                end
            end
            si=si+b(i);
            x(i)=1/A(i,i)+si;
        end
        if sqrt(dot(x-x0,x-x0))<tol
            return;
        else
            k=k+1;
            x0=x;
        end
    end
    megoldas=x;
end