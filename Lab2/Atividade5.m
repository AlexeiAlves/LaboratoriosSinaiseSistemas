home;
clear;
close all;

n=-5:40;
x=4*cos(0.1*pi*n+pi/3)+3*sin(0.3*pi*n+pi);

figure(1);
stem(n, x, 'LineWidth', 1);
xlabel('n');
ylabel('y(n)');
grid on;
saveas(1, 'Atividade5_9.png');