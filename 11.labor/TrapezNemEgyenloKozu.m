function I = TrapezNemEgyenloKozu (x , y )
if nargin <2
    error ('Legalabb ket bemeneti parameter szukseges ');
end
if any( diff ( x ) <0)
    error ('x nem monoton novekvo ');
end
n = length ( x );
if length ( y ) ~= n
    error ('x es y nem egyforma hosszuak ');
end
s = 0;
for k = 1: n - 1
    s = s + ( x ( k + l ) - x ( k ))*( y ( k )+ y ( k + l ))/2;
end
I = s ;