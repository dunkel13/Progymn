N=500; %number of intervals;

x=0:(1/N):1;


for i=1:N
    coef(i)= coeficiente( (x(i)+x(i+1))/2);

end

A=sparse(N-1,N-1);

for i=1:(N-1)
 A(i,i)=coef(i)+coef(i+1);
end

for i=1:(N-2)
 A(i,i+1)=-coef(i+1);
 A(i+1,i)=-coef(i+1);
end

A=(N)*(N)*A;

b=-ones(N-1,1);

u=A\b;

plot(x,[0;u;0])
