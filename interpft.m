x=[0:9]*(2*pi)/10;
y=x.*(x-2*pi).*exp(-x);
t=0:(2*pi/99):2*pi;
f=t.*(t-2*pi).*exp(-t);
zaux=interpft(y,100);
z=real(zaux);
lpp=interp1(x,y,t,'linear');
cpp=interp1(x,y,t,'nearest');
s=interp1(x,y,t,'spline');
plot(x,y,'*','MarkerSize',10)
hold on
plot(t,z,'r','Linewidth',5)
plot(t,cpp,'g','LineWidth',5)
plot(t,lpp,'k','Linewidth',5)
plot(t,s,'y','LineWidth',5)
