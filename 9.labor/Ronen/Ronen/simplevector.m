%x=[2,4,2,6,7,1,2,8,9]
%y=[1,2,3,4,5,6,7,8,9]

function [x1,y1]=simplevector(x,y)

for i=1:length(x)
   s{i}(1)=x(i);
   s{i}(2)=y(i);
end

%bubisort
csere=1;
while csere
   csere=0;
   for i=1:length(x)-1
       if s{i}(1)>s{i+1}(1)
          csere=1;
           
          k=s{i}(1); 
          s{i}(1)=s{i+1}(1);
          s{i+1}(1)=k;
          
          k=s{i}(2); 
          s{i}(2)=s{i+1}(2);
          s{i+1}(2)=k;
       end
   end
    
end

%kill
for i=1:length(x)-1
   if s{i}(1)==s{i+1}(1)
       
       l=1;
       ii=i;
       while s{ii}(1)==s{ii+1}(1)
           l=l+1;
           ii=ii+1;
       end
       o=0;
       for m=i:i+l-1
          o=o+s{m}(2); 
       end
       o=o/l;
       for m=i:i+l-1
           s{m}(2)=o;
       end
       

   end
end

%felteteles print
j=1;
for i=1:length(x)
   if (i~=length(x))
    if s{i}~=s{i+1}
      x1(j)=s{i}(1);
      j=j+1;
    end
   end
end
fprintf('\n');
l=1;
for i=1:length(x)
   if (i~=length(x))
    if s{i}~=s{i+1}
        y1(l)=s{i}(2);
        l=l+1;
    end
   end
end

end