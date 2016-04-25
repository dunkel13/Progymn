clear all
% Z^3-1 tiene tres raices
  R1=1; %( X=1; Y=0;)
  R2=-(1/2)+sqrt(-1)*sqrt(3)/2;  %  (X=-1/2; Y=sqrt(3)/2)
 R3=-(1/2)-sqrt(-1)*sqrt(3)/2;  %   (X=-1/2; Y=sqrt(3)/2)

x=linspace(-3,3,10);

[X,Y]=meshgrid(x);

Z=X+sqrt(-1)*Y;

Nmax=50;

Z0=Z;



for k=1:Nmax
    
    Z1=Z0- (Z0.^3-1)./(3*Z0.^2);
    Z0=Z1;
    X1=real(Z1);
    Y1=imag(Z1);
%     scatter(X1(:),Y1(:));
%     axis(3*[-1 1 -1 1])
%     grid on
%     title(k)
%     pause(0.1)
%     hold off
end
mieps=0.0001;

[m,n]=size(Z1);


for s1=1:m
    for s2=1:n
        
    if( abs(Z1(s1,s2)-R1)<mieps )
        G(s1,s2)=1;
    end
    
    if( abs(Z1(s1,s2)-R2)<mieps )
        G(s1,s2)=2;
    end

    if( abs(Z1(s1,s2)-R3)<mieps )
        G(s1,s2)=3;
    end
    


    end
end


 surf(X,Y,0*G,G);
view(2)
 shading interp
