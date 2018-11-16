clf
n=input('Digite um número natural maior ou igual a 1:');
a = n-1;
num=[factorial(a)];
vec=zeros(1,a+2);
vec(1)=1;
den=vec;
t= 0:0.1:12;
y=impulse(num,den,t);
plot(t,y);
hold on
f = t.^(n-1);
plot(t,f,'r-.')

xlabel('Tempo em segundos');
ylabel('Resposta');
title('Resposta ao impulso e trajetória da função no tempo');

set(gca, 'Color', 'k');


