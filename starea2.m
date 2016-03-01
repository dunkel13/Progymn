N=10:10:100;
l=length(N);
T1=zeros(1,l);
T2=zeros(1,l);
for i=1:l
	x=rand(1,N(i));
	tic;
	mysort(x);
	T1(i)=toc;

	tic;
	sort(x);
	T2(i)=toc;
end

plot(N,T1,'-r', 'LineWidth',5)
hold on 
plot(N,T2,'-g', 'LineWidth',5)
grid on
title('Grafico tarea2', 'FontSize',20);
hold off
