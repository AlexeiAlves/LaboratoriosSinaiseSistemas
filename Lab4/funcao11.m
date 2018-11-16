clf
num=[1];
den=[1,0,0];
t=0:0.1:12;
y=impulse(num,den,t);
plot(t,y)
hold on
f=t;
plot(t,f,'r-.')
xlabel('Tempo em segundos');
ylabel('Resposta');
title('Resposta ao impulso e trajetória da função no tempo');

set(gca, 'Color', 'k');
