N=100:100:10000;
l=length(N);
T1=zeros(1,l);
T2=zeros(1,l);
for i=1:l
	x=rand(1,N(i));
	tic;
	minorm(x);
	T1(i)=toc;

	tic;
	norm(x);
	T2(i)=toc;
end

plot(N,T1,'-r', 'LineWidth',5)
hold on 
plot(N,T2,'-g', 'LineWidth',5)
hold off

% Tarea2: hacer esta comparacion con el comando 'sort'
% construir propia version sort, y compararlas respecto al tiempo

