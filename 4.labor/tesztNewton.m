fuggveny = @(x)(x^4-6.4*x^3 + 6.45*x^2 + 20.538*x - 31.752);
derivalt = @(x)(4*x^3 - 19.2*x^2 + 12.9*x + 20.538);
xStart = 2;
[root,numIter] = newtonraphoson_egyszeru(fuggveny,derivalt,xStart)