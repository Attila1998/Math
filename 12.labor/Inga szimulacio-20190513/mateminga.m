clear;
kezd=[pi/3 2];
l=2.5;
z=-3:0.01:3;
z1=-3:0.1:-2;
z2=-2:0.1:-1;
z3=-1:0.1:0;
z4=0:0.1:1;
z5=1:0.1:2;
z6=2:0.1:3;
interv=[0 50];
fel=interv(1):0.1:interv(2);
meg=ode45(@minga,interv,kezd);
valt=deval(meg,fel);
x=l*sin(valt(1,:));
y=-l*cos(valt(1,:));
for i=1:length(x)
    clf;
    plot(z,0,'black');
    hold on;
    plot(z4,z4,'black');
    hold on;
    plot(z5,z5-1,'black');
    hold on;
    plot(z6,z6-2,'black');
    hold on;
    plot(z3,z3+1,'black');
    hold on;
    plot(z2,z2+2,'black');
    hold on;
    plot(z1,z1+3,'black');
    hold on;


    plot([0 x(i)],[0 y(i)],'black');
    hold on;
    filledCircle([x(i) y(i)],0.1,100,'g')
    hold on;
    xlim([-3 3]);
    ylim([-3 3]);
    hold on; 
    pause(0.4);
  
end
