% felulet mozgasa
[x , y ]= meshgrid ( -2:0.05:2);
z =cos ( x .^2+ y .^2).^2.* x ; % ezt a feluletet fogjuk mozgatni idoben
axis equal ;
for t =1:0.1:10 % az ido
clf ; % minden esetben letoroljuk az abrat
z =cos ( x .^2+( y + t ).^2).^2.* sin ( x );
surf (x ,y , z ) % x,y,z kordinatakat pertubaljuk idoben
%figure;
%mesh(x,y,z);
%figure;
%plot3(x,y,z);
shading interp ; % tomor abrat rajzol ki
pause (0.1) % megengedunk egy kis szunetet hogy lassuk idoben
end