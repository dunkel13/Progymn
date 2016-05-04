N=6;
x=0:1/N:1;
y=exp(x);
p=polyfit(x,y,6);
t=0:0.01:1;
pt=polyval(p,t);
plot(x,y,'gp','MarkerSize',10)
plot(x,y,'rp','MarkerSize',10)
hold on
pt=polyval(p,t);
plot(t,pt,'k-','LineWidth',5)
hold on
plot(t,exp(t),'m-','LineWidth',5)
