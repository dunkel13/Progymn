function x=misdiv2(N)

x=[];
for i=1:N
	res=mod(N,i);
	if(res==0)
		x=[x,i];
	end
end
