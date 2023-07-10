function [root,numIter] = newtonraphson_egyszeru(func,dfunc,x,tol)
if nargin < 5;
    tol = 1.0e6*eps;
end