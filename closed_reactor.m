
%Datos

Da=0.454; %Dibujamos para distintos valores hasta obtener el crítico
beta=10;
q=6;
%Definimos el sistema siendo y(1)=Y e y(2)=theta
f=@(t, y) [-y(1)/(q*beta)*exp(y(2)/(1+y(2)/beta)); -y(2)/Da+y(1)*exp(y(2)/(1+y(2)/beta))];
a=0;
b=15;
N=1000; 
y=zeros(2, N+1); 
y(:,1)=[1;0];

%mallado temporal 
h=(b-a)/N;
t=linspace(a,b,N+1);

%Utilizamos el método de Heun 3 etapas

 for i=1:N
    k1=f(t(i),y(:,i));
    k2=f(t(i)+1/3*h,y(:,i)+1/3*h*k1);
    k3=f(t(i)+2/3*h,y(:,i)+h*2/3*k2);
    y(:,i+1)=y(:,i)+h*(0.25*k1+0.75*k3);
 end

figure
plot (t,y(2,:))