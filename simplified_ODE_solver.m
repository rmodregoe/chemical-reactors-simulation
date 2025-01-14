function dx = resolucionedosimplif(x,t,Du)
x1=x(1);
dx1=-x1./Du+exp(x1);

dx=[dx1];
end

