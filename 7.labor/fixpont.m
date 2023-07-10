function fixpont(D,func,N,x0)
    f=feval(func,D);
    plot(D,f);
    hold on;
    plot(D,D)
    for i=1:N
        f0=feval(func,x0);%f(x0)
        ff0=feval(func,f0);%f(f(x0))
        plot([x0,f0],[f0,f0]);
        plot([f0,f0],[f0,ff0]);
        x0=f0;
        pause(0.1);
            
     end
end