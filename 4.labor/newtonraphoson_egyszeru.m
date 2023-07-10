 function [ root , numIter ] = newtonraphoson_egyszeru ( func , dfunc ,x , tol )
if nargin < 5;
    tol = 1.0 e6 *eps;
end