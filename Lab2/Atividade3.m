home;
clear;

%Efeito de Batidas
fs = 44100;
t = 0 : 1/fs : 5;
f1 = 300;
f2 = 300 + (0:30/(numel(t)-1):30);
%f2 = 1010;
A = 0.5;
w = 0 * pi/180;
y1 = A * sin(2 * pi * f1 * t + w );
y2 = A * sin(2 * pi * f2 .* t + w );
y=[y1;y2];
sound( y, fs, 16 );