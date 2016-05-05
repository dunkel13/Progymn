x=[1 3 5 7 9 11]
y=[-3 4 5 -8 -3 0]
plot(x,y, 'r-', 'MarkerSize', 10)
r=2:3;
xi = 4.5;
p=polyfit(x(r),y(r),1);
yi=polyval(p,xi)
p=polyfit(x,y,5);
y=polyval(p,xi)

t=1:1:11;
yi=polyval(p,t)
hold on
plot(t,yi,'g-', 'LineWidth', 4)
grid on
