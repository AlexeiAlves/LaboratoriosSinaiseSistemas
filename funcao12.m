clf
a=input('Digite o valor de a:');
num=[1];
den=[1,a,0];
t=0:0.1:12;
y=impulse(num,den,t);
plot(t,y);
hold on
f=(1-exp(-a*t))/a;
plot(t,f,'r-.');
xlabel('Tempo em segundos');
ylabel('Resposta');
title('Resposta ao impulso e trajetória da função no tempo');

set(gca, 'Color', 'k');
