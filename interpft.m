x=(0:9)*2*pi/10;
y=x.*(x-2*pi).*exp(-x);
zaux=interpft(y,100);
z=real(zaux);
hold on
plot(t,z,'r-', 'LineWidth',5)
hold off
plot(t,z,'r-', 'LineWidth',5)
hold on
plot(t,ft,'LineWidth',5)
