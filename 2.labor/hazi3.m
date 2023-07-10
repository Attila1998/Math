function hazi3
(L,r)
h=0:0.01:5;
V=L.*((r.^2).*(acos((r-h)./r))-(r-h).*(sqrt(2.*r.*h-h.^2)));
plot(h,V,'r');
end