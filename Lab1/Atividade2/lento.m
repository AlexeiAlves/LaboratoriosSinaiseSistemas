home;
clear;

%Lento
music = '01_MULHERES.wav';
[y,fs] = audioread(music);

audiowrite('MULHERES_Lento.wav', y, fs/2);
player = audioplayer(y, fs/2);
play(player);