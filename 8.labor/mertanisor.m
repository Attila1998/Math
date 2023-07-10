M=10;
x=0:0.1:1
m=3;
f=(x.^m)/(1-x);
plot(x,f);
legend('Az alap fuggveny');
hold on;
szin=hsv(M);
s=1;
for i=m:M
    s=s+x.^i;
    plot(x,s,'color',szin(i,:));
    pause(0.1);
end

