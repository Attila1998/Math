function v = polinominterp(x,y,u)
n = length(x);
v = zeros(size(u));
for j = 1:n
    w = ones(size(u));
    for i = [1:j-1 j+1:n]
        w = (u-x(i))./(x(j) -x(i)).*w;
    end
    v = v + w*y(j);
end
