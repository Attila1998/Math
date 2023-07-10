function [H a b]=HI1(u,x,y,dy)% Hermite interpolacio 
% u: diszkret adathalmaz; 
%  x: [x_1,...,x_n]
%  y: [y_1,...,y_n]
%  dy: [y'_1,...,y'_n]
n=length(x);          
k=length(u);          
li=ones(n,k);         
a=zeros(n,k);         
b=zeros(n,k);         
H=zeros(1,k);         
for i=1:n       
    dl=0;             
    for j=1:n    
        if j~=i
            dl=dl+1/(x(i)-x(j));
            li(i,:)=li(i,:).*(u-x(j))/(x(i)-x(j)); 
        end
    end
    l2=li(i,:).^2;
    b(i,:)=(u-x(i)).*l2;           
    a(i,:)=(1-2*(u-x(i))*dl).*l2;  
    H=H+a(i,:)*y(i)+b(i,:)*dy(i);  
end   
end