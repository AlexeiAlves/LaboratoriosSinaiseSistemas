clear;
home;

a = 2;
b = 50;
n = -100:1:100;
sinal = @(n)sin(0.5*pi*0.01*n) + cos(2*pi*0.01*n) + 1;

yn = sinal(a*n + b);

figure(1);
stem(n, yn, 'LineWidth', 1);
xlabel('n');
ylabel('y(n)');
grid on;
title('Sinal modificado');
saveas(1, 'sinal_modificado.png');