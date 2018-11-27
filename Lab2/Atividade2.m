home;
clear;

%Cancelamento de Fase
fs = 44100;
t = 0:1/fs:5;
f1 = 440;
f2 = 440;
A1 = .3;
A2 = .3;
w1 = 0;
w2 = 181;
y1 = A1 * sin(2 * pi * f1 * t + w1 * pi/180);
y2 = A2 * sin(2 * pi * f2 * t + w2 * pi/180);
y = (y1 + y2)/2;

figure(1);
plot(t, y, 'LineWidth', 1);
xlabel('t');
ylabel('y(t)');
grid on;
saveas(1, 'Atividade2_4.png');

sound(y, fs, 16);