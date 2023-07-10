function elfeladat (pont)
clc;
if pont >= 90 && pont <= 100
    disp('A');
elseif pont >= 80 && pont < 90
    disp('B');
elseif pont >= 70 && pont < 80
    disp ('C');
elseif pont >= 60 && pont < 70
    disp ('D');
elseif pont < 60
    disp ('F');
end
end
