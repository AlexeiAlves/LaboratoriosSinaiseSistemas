home;
clear;

music = '01_MULHERES.wav';
[y, fs] = audioread(music);

player = audioplayer(y, fs);
play(player);

figure(1);
x = y(1:(numel(y)/2), 1);
plot(x);
saveas(1, 'original.png');