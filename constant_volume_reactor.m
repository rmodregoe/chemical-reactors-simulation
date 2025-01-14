%Reactor cerrado a volumen constante

%Discretización en el tiempo:
T=100;
dt=0.01;
Nt=T/dt;
t1=0:dt:T-dt;

%Tomamos distintos valores de Da para determinar cuál es el crítico
Beta=10;
q=6;
Da=0.4;


%Valores iniciales de teta e y que se irán actualizando
theta=0;
y=1;
%Vector donde se guardarán los valores de Theta para distintos tiempos
Theta=zeros(Nt,1);
t=0;
for i=1:Nt
    t=t+dt;
    teta0=theta;
    theta = theta + dt*(-theta/Da + y*exp(theta/(1 + (theta/Beta))));
    y = y + dt*(-(y/(q*Beta))*exp(teta0/(1 + (teta0/Beta))));
    Theta(i)=theta;
    
end
plot(t1,Theta)
xlim([0 10])
theta
y

