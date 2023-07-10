function kettes(U1,U2,U3,U4,U5)
clc;

n=[0.036;0.020;0.015;0.030;0.022];
S= [0.0001;0.0002;0.0012;0.0007;0.0003];
B= [10;8;20;25;15];
H= [2;1;1.5;3;2.6];

U1 = (sqrt(S(1))/n(1)) * (B(1)*H(1)/(B(1)+2*H(1)))^(2/3);
U2 = (sqrt(S(2))/n(2)) * (B(2)*H(2)/(B(2)+2*H(2)))^(2/3);
U3 = (sqrt(S(3))/n(3)) * (B(3)*H(3)/(B(3)+2*H(3)))^(2/3);
U4 = (sqrt(S(4))/n(4)) * (B(4)*H(4)/(B(4)+2*H(4)))^(2/3);
U5 = (sqrt(S(5))/n(5)) * (B(5)*H(5)/(B(5)+2*H(5)))^(2/3);

fprintf('value of a: %d\n', U1);
fprintf('value of a: %d\n', U2);
fprintf('value of a: %d\n', U3);
fprintf('value of a: %d\n', U4);
fprintf('value of a: %d\n', U5);


end



