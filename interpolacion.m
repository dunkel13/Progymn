x=[65,55,45,35,25,15,5,-5,-15,-25,-35,-45,-55];
y=[-3.1,-3.22,-3.3,-3.32,-3.17,-3.07,-3.02,-3.02,-3.12,-3.2,-3.35,-3.37,-3.25];
p12=polyfit(x,y,12);
t=-55:1:65;
p12t=polyval(p12,t);
plot(x,y,'rp','Markersize',10)
grid on
hold on
plot(t,p12t,'-r', 'LineWidth',5)