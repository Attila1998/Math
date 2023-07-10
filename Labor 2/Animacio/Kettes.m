clc ;
t =0: pi /50:10* pi;
v = VideoWriter ('out.avi ');
open ( v )
plot3 (cos (t ) , sin( t ) , t );
% Ciklusok I. % for i=1:n
% utasitas(ok);
% end
% Ciklusok II.
% for i=0:eps:N
% utasitas(ok);
% end
hold on;
N =10* pi;
for j =0: pi /50: N
clf ;
plot3 (cos (t ) , sin( t ) , t );
hold on;
plot3 (cos (N - j ) ,sin(N - j ) ,N -j ,'ro');
hold on;
F = getframe ( gcf );
writeVideo (v , F );
pause (0.05);
end
close ( v );