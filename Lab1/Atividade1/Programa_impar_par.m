clear;
home;

n = -100:1:100;
sinal = @(n)sin(0.5*pi*0.01*n) + cos(2*pi*0.01*n) + 1;

impar = func_impar(n, sinal);
par = func_par(n, sinal);

figure(1);
plot(n, impar, 'g', 'LineWidth', 1);
hold on;
plot(n, par, 'r', 'LineWidth', 1);
hold on;
plot(n, impar+par, 'b', 'LineWidth', 1);
xlabel('n');
ylabel('z(n)');
grid on;
title('Componente Par, Impar e soma das duas');
saveas(1, 'componentes.png');
