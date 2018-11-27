home;
clear;

f = 1000;
fs = 2*f - 1;
t = 0:1/fs:2;
A = 0.2;
w = 15*pi/180;
y = A*sin(2*pi*f*t + w); %0.2*sen((2*pi*1000) * t + 15º)

figure(1);
plot(t, y, 'LineWidth', 1);
xlabel('t');
ylabel('y(t)');
grid on;
saveas(1, 'Atividade1.png');

sound(y, fs, 16);