% Szamitsuk ki az \int_0^2Pi \sqrt{x}\cdot \cos(x)dx integralt 6 tizedes
%pontossaggal.
clc;
clear;
format long % A nagyobb pontossag elerese vegett
func = @(x) (sqrt(x)*cos(x));
I2h = 0;
for k = 1:20
Ih = trapezRek(func,0,pi,I2h,k);
if (k > 1 && abs(Ih - I2h) < 1.0e-6)
    Integral_erteke = Ih
    Az_fuggveny_kiertekeles_szam = 2^(k-1) + 1
    return;
end
I2h = Ih;
end
error('Tul sok iteracio');