a=0;
b=2;

fa=fbp(a);
fb=fbp(b);

% numero maximo de iteraciones

M=100;
% tolerancia residuo
tolr=0.00000001;
% tolerancia incremento
toli= 0.00001;
lon=b-a;
for i=1:M
	lon=lon/2;
	c=a+lon;
	fprintf('c(%d) = %.10f \n',i,c)
	
	fc=fbp(c);
	if (abs(fc)<tolr)
		r=c;
		break;
	else
%		if (fa*fc<0)
		if (sign(fa)~=sign(fc))
			b=c;	
			fb=fc;
		else
			a=c;
			fa=fc;
		end
	end
%	if ((lon/2)<toli)
%		r=c;
%		break;
end

function y=fbp(x)

y=x*x-2;
