home;
clf;
clc;
des = input('Digite o deslocamento:');
t=-10:0.01:10;
u = zeros(1,length(t));

for i = 1:length(t)
    u(i) = degrau(t(i),des);
end

figure(1);
plot(t,u);
axis([-10 10 -0.5 1.5]);
title('Degrau Unitário');
xlabel('t');
ylabel('u(n)');