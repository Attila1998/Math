t=1900:10:1990;
p=[75.995 91.972 105.711 123.203 131.669...
    150.697 179.323 203.212 226.505 249.633];
interp1(t,p,1975);
ans=214.8585
x=1900:1:2000;
y=interp1(t,p,x,'spline');
plot(t,p,'o',x,y)