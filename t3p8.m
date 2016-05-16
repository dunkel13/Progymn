s=[0,1,2];
x=[5,5,4];
t=0:0.00005:2;
sx=interp1(s,x,t,'spline');
y=[6,4,1];
sy=interp1(s,y,t,'spline');
plot(sx,sy)
axis square
s2=[2,3,4];
x2=[4,4,5.77];
y2=[1,2.33,1.66];
t2=2:0.00005:4;
sx2=interp1(s2,x2,t2,'spline')
sy2=interp1(s2,y2,t2,'spline')
hold on
plot(sx2,sy2)
axis square
s3=[4,5,6];
x3=[5.77,8,9];
y3=[1.66,2,5];
t3=4:0.00005:6;
sx3=interp1(s3,x3,t3,'spline')
sy3=interp1(s3,y3,t3,'spline')
hold on
plot(sx3,sy3)
axis square
s4=[6,7,8];
x4=[9,7.77,6.33];
y4=[5,7.77,8.33];
t4=6:0.00005:8;
sx4=interp1(s4,x4,t4,'spline')
sy4=interp1(s4,y4,t4,'spline')
hold on
plot(sx4,sy4)
axis square
s5=[8,9,10];
x5=[6.33,6,6.88];
y5=[8.33,5,0.33];
t5=8:0.00005:10;
sx5=interp1(s5,x5,t5,'spline')
sy5=interp1(s5,y5,t5,'spline')
hold on
plot(sx5,sy5)
axis square
z=[5,5,4,4,5.8,8,9,7.77,6.33,6,6.88];
z1=[6,4,1,2.3,1.66,2,5,7.77,8.33,5,0.33];
hold on
plot(z,z1,'*','MarkerSize',10)
