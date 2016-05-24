s=[0,1,2];
x=[7,8,8];
t=0:0.01:2;
sx=interp1(s,x,t,'spline');
y=[1,2,0.1];
sy=interp1(s,y,t,'spline');
plot(sx,sy,'-r','LineWidth',5)
axis square

s2=[2,3,4];
x2=[8,7,5];
y2=[0.1,0.1,3];
t2=2:0.01:4;
sx2=interp1(s2,x2,t2,'spline');
sy2=interp1(s2,y2,t2,'spline');
hold on
plot(sx2,sy2,'-r','LineWidth',5)
axis square

s3=[4,5,6];
x3=[5,7,6];
y3=[3,5,7];
t3=4:0.01:6;
sx3=interp1(s3,x3,t3,'spline');
sy3=interp1(s3,y3,t3,'spline');
hold on
plot(sx3,sy3,'-r','LineWidth',5)
axis square

s4=[6,7,8];
x4=[6,3,5];
y4=[7,6,4];
t4=6:0.01:8;
sx4=interp1(s4,x4,t4,'spline');
sy4=interp1(s4,y4,t4,'spline');
hold on
plot(sx4,sy4,'-r','LineWidth',5)
axis square

s5=[9,10,11];
x5=[4,5,4];
y5=[6,4,0.1];
t5=9:0.01:11;
sx5=interp1(s5,x5,t5,'spline');
sy5=interp1(s5,y5,t5,'spline');
hold on
plot(sx5,sy5,'-b','LineWidth',5)
axis square

s6=[11,12,13];
x6=[4,3,4];
y6=[0.1,1.5,1];
t6=11:0.01:13;
sx6=interp1(s6,x6,t6,'spline');
sy6=interp1(s6,y6,t6,'spline');
hold on
plot(sx6,sy6,'-b','LineWidth',5)
axis square
