function dx = resolucionedo(x,t,q,beta,Du)
x1=x(1);
x2=x(2);

dx1= -x1./(q.*beta).*exp(x2./(1+x2./beta));
dx2=-x2./Du+x1.*exp(x2./(1+x2./beta));

dx=[dx1;dx2];
end

