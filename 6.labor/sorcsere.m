function A = sorcsere(A,k,p)
    temp = A(k,:)
    A(k,:)=A(p,:)
    A(p,:)=temp
end