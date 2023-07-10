function Ih = trapezRek(func,a,b,I2h,k)
% Rekurziv trapez formula.
% HASZNALTA: 
%    Ih = trapezRek(func,a,b,I2h,k)
% func = a fuggveny amit integralni szeretnenk
% a,b = az integralasi hatarok.
% I2h = az elozo lepesben szamolt integral.

if k == 1
    fa = feval(func,a); %csak ket pontunk van, igy a vegpontokat hat. meg
    fb = feval(func,b);
    Ih = (fa + fb)*(b - a)/2.0; % trapez terulete
else
n = 2^(k -2 ); % az uj pontok szama
h = (b - a)/n ; 
x = a + h/2.0; 
sum = 0.0;
for i = 1:n
    fx = feval(func,x);
    sum = sum + fx;
    x = x + h;
end
    Ih = (I2h + h*sum)/2.0;
end