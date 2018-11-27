home;
clear;

%Invertido
music = '01_MULHERES.wav';
[y,fs] = audioread(music);

y1 = flipud(y);
audiowrite('MULHERES_Invertido.wav', y1, fs);
player = audioplayer(y1, fs);
play(player);