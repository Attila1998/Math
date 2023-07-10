M=10;
x=-1:0.1:1
f=cos(x);
plot(x,f);
legend('Az alap fuggveny');
hold on;
szin=hsv(M);
s=1;
for i=1:M
    s=s+(((-1).^i)/(factorial(2*i))) * (x.^(2*i));
    plot(x,s,'color',szin(i,:));
    pause(0.1);
end