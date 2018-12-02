home;
clear;

fs = 44100; % Frequência de amostragem(Hz)

t = 0 : 1/fs : 5; % coordenada - tempo (segundos)
f1 = 130.813;
f2 = 195.998;
f3 = 261.626;
f4 = 329.628;
f5 = 391.995;

A1 = 0.3; %Primeira amplitude
A2 = A1/(f2/f1); %Amplitude do segundo sinal com base no primeiro
A3 = A1/(f3/f1); %Amplitude do terceiro sinal com base no primeiro
A4 = A1/(f4/f1); %Amplitude do quarto sinal com base no primeiro
A5 = A1/(f5/f1); %Amplitude do quinto sinal com base no primeiro
w = 0; % Fase

y1 = A1 * sin( 2 * pi * f1 * t + w );
y2 = A2 * sin( 2 * pi * f2 * t + w );
y3 = A3 * sin( 2 * pi * f3 * t + w );
y4 = A4 * sin( 2 * pi * f4 * t + w );
y5 = A5 * sin( 2 * pi * f5 * t + w );
y = (y1+y2+y3+y4+y5)/5;

sound( y, fs, 16 ); % reprodução da onda senoidal

figure(1);
plot(t, y, 'LineWidth', 1);
xlabel('t');
ylabel('y(t)');
grid on;
saveas(1, 'Atividade4.png');