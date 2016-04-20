Nmax=100;
tolres=1*10^-12;
tolinc=1*10^-12;
x0=-0.54;
% se utiliza Newton para hallar r1 (raiz negativa)
D=t2p10(x0,Nmax,tolinc,tolres);

for i=-10:0.1:10
  f=t2p10(i,Nmax,tolinc,tolres);
  if(abs(f-D)<0.000001)
    fprintf('converge para x0=(%d) \n',i);
  else
  end
end
