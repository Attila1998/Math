function gyok = felezo ( func , x1 , x2 , tol )
if nargin < 4
    tol = 1.0 e4 * eps;
end
f1 = feval ( func , x1 );
if f1 == 0.0
    root = x1 ;
    return ;
end
f2 = feval ( func , x2 )
if f2 == 0.0
    gyok = x2 ;
    return ;
end
if f1 * f2 > 0
    error ('A gyok nem az (x1 ,x2) intervallumban van ')
end
n = ceil ( log(abs( x2 - x1 )/ tol )/ log (2.0)); % --> help ceil
for i = 1: n
    x3 = 0.5*( x1 + x2 );
    f3 = feval ( func , x3 );
    if f3 == 0.0
        gyok = x3 ;
        return
    end
    if f2 * f3 < 0.0
36 % Kiegesziteni
37 else
38 % Kiegesziteni
39 end
end
gyok =( x1 + x2 )/2;