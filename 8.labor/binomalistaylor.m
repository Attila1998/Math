M=10;
x=-1:0.1:1
a=30;
f=(1+x).^a;
plot(x,f);
legend('Az alap fuggveny');
hold on;
szin=hsv(M);
s=1;
for i=1:M
    s=s+nchoosek(a,i) * (x.^i);
    plot(x,s,'color',szin(i,:));
    pause(0.1);
end