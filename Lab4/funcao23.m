clf
a = input('Digite o valor de a:');
w = input('Digite o valor de w:');
num=[w];
den=[1,2*a,(a^2)+(w^2)];
t=0:0.1:12;
y=impulse(num,den,t);
plot(t,y);
hold on
f=exp(-a*t).*sin(w*t);
plot(t,f,'r-.');

xlabel('Tempo em segundos');
ylabel('Resposta');
title('Resposta ao impulso e trajetória da função no tempo');

set(gca, 'Color', 'k');
