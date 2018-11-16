home;
clear;
clf

a = 1;
t = 0:0.1:12;

%         1
% -----------------
% s^2 + 2*s*a + a^2
num = [1];
den = [1, 2*a, a^2];

y = impulse(num, den, t);
f = t.*exp(-a*t);

figure(1);
plot(t, y, 'g:');
hold on;
plot(t, f, 'r-.');
xlabel('Tempo em segundos');
ylabel('Resposta');
title('Resposta ao impulso e trajetória da função no tempo');

set(gca, 'Color', 'k');
