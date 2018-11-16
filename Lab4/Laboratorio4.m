clf
a=1;
b=2;
num=[1];
den=[1,a+b,a*b];
t=0:0.1:12;
y=impulse(num,den,t);
plot(t,y)
f=(exp(-a*t)-exp(-b*t))/(b-a);
hold on
plot(t,f,'r-.')
xlabel('tempo em segundos');
ylabel('resposta');
title('resposta ao impulso e trajetória da função no tempo');

