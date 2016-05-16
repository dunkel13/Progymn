% integral de 2 a 5 de e^x
a=2;
b=5;
xaux=rand(1,10000);
x=a+xaux*(b-a);
f=exp(x);
m=mean(f);
m1=m*(b-a)
