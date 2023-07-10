function x = LUmegoldas(A,b)
A=[2 -2 0 0 0; -2 5 -6 0 0; 0 -6 16 12 0; 0 0 12 39 0; 0 0 0 -6 14];
b=[2 4 6]';
if size(b,2)>1
    b = b';
end
n=length(b);
y(k)=b(k)-