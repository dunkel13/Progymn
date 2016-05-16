s=[0,1,2];
x=[5,4,5];
t=0:.01:2;
sx=interp1(s,x,t,'spline');
y=[1,4,7];
sy=interp1(s,y,t,'spline');
plot(sx,sy)
axis square
s2=[2,3,4];
x2=[5,2.5,5];
y2=[7,4,1];
t2=2:0.01:4;
sx2=interp1(s2,x2,t2,'spline')
sy2=interp1(s2,y2,t2,'spline')
plot(x,y)
plot(sx,sy)
hold on
plot(sx2,sy2)
axis square
