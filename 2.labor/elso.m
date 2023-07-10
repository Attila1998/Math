function elso(pontszam)
clc;
if pontszam >= 90 && pontszam <= 100
    disp('A');
elseif pontszam >=80 && pontszam < 90
    disp('B');
elseif pontszam >= 70 && pontszam < 80
    disp('C');
elseif pontszam >= 60 && pontszam < 70
    disp('D');
elseif pontszam < 60
    disp('F');
end
end

