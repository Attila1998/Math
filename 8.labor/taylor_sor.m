M=10; %hany tagot adok ossze
x=0:0.01:1 %ertelmezesi tartomany
f=exp(x)  %f=e^x
plot(x,f);
legend('Az alap fuggveny');
hold on;
szin=hsv(M);
s=1;
for i=1:M
    s=s+x.^i/factorial(i);
    plot(x,s,'color',szin(i,:));
    pause(0.1);
end
    