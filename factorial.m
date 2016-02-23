function y=factorial(x)
product=1;
if(x==0 || x==1)
	y=1
	fprintf('el factorial de %d es %d\n', x,y)
else
	for i=1:x
		product=product*i;
		end
	y= product;
fprintf('el factorial de %d es %d\n',x ,y)
end
end
	
