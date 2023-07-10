function x = gaussPiv(A,b)
% Megoldja A*x = b rendszer foelemkivalasztasos Gauss eliminacioval 
% Hasznalat: 
% x = gaussPiv(A,b)
if size(b,2) > 1
    b = b'; 
end
n = length(b); 
s = zeros(n,1);
%----------Skala faktorok meghatarozasa----------
for i = 1:n
    s(i) = max(abs(A(i,1:n))); 
end
%---------Sorcsere ha szukseges----------
for k = 1:n-1
    [Amax,p] = max(abs(A(k:n,k))./s(k:n));
    p = p + k - 1;
    if Amax < eps
        error('Matrix is singular'); 
    end
    if p ~= k
        b = sorcsere(b,k,p);
        s = sorcsere(s,k,p);
        A = sorcsere(A,k,p);
    end
%--------------Eliminacios lepes---------------
    for i = k+1:n
        if A(i,k) ~= 0
            lambda = A(i,k)/A(k,k);
            A(i,k+1:n) = A(i,k+1:n) - lambda*A(k,k+1:n);
            b(i) = b(i) - lambda*b(k);
        end
    end
end
%------------Visszhelyettesites----------
for k = n:-1:1
    b(k) = (b(k) - A(k,k+1:n)*b(k+1:n))/A(k,k);
end
x = b;