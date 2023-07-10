%D-ertektartomany
%func-fuggveny
%N-iteracio szam
function iteracio(D,func,N)
    x=D;
    szin=hsv(N);
    for i = 1:N
        f=feval(func,x);
        plot(D,f,'color',szin(i,:));
        hold on;
        x=f;
        pause(0.1);
    end
end