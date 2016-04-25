
xini=[-1;0];

V=funcionnewtonv(xini);

for k=1:20
   DV=derivadanewtonv(xini);
   xnue=xini-DV\V;
   V=funcionnewtonv(xnue);
   xini=xnue
end
