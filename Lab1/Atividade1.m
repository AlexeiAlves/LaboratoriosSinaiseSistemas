home;
clear;

%Calcula os valores para o sinal contínuo e gera o gráfico
t = -1:0.001:1;
zt = sin(0.5*pi*t) + cos(2*pi*t) + 1;
figure(1);
plot(t, zt, 'LineWidth', 1);
xlabel('t');
ylabel('z(t)');
grid on;
title('Sinal Continuo');
saveas(1, 'sinal_continuo.png');

%Calcula os valores para o sinal discreto e gera o gráfico
n = -100:1:100;
zn = sin(0.5*pi*0.01*n) + cos(2*pi*0.01*n) + 1;
figure(2);
stem(n, zn, 'LineWidth', 1);
xlabel('n');
ylabel('z(n)');
grid on;
title('Sinal Discreto');
saveas(2, 'sinal_discreto.png');
