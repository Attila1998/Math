function Fn=hazi5 ( A )
osszeg = 0;

for i =1:size(A,1)
    for j =1:size(A,2)
     osszeg = osszeg+A(i,j)^2;
    end
end
 Fn=sqrt(osszeg);