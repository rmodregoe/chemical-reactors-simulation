%Reactorabierto
f=@(theta) theta.*exp(-theta);
f1=@(theta) exp(-theta).*(1-theta);
Thetai=0:0.01:10;
deltai=f(Thetai);
plot(Thetai,deltai);
title('Rama ignición')


%4.2

g=@(x) 1./x.*exp(x);
g1=@(x) exp(x)./x -exp(x)./x.^2;
Thetae=0:0.01:10;
deltae=f(Thetae);
plot(Thetae,deltai);
title('Rama extinción')


%5
h=@(x) x./(1-x).*exp(-beta*q*x./(1+q*x));
Theta=0:0.01:10;
q=6;
beta=0;
Da=h(Theta);
semilogx(Da,Theta);
title('Dac (q=6, beta=80)') 
% beta=20;
% Da=h(Theta);
% plot(Theta,Da);
% beta=40;
% Da=h(Theta);
% plot(Theta,Da);
% beta=80;
% Da=h(Theta);
% plot(Theta,Da);
% hold off