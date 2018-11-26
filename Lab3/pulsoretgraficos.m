home;
clf;
clc;
des = input('Digite o deslocamento:');
t=-10:0.01:10;
p = zeros(1,length(t));

for i = 1:length(t)
    p(i) = pulsoret(t(i),des);
end

figure(1);
plot(t,p);
axis([-10 10 -0.5 1.5]);
title('Pulso Retangular Unitário');
xlabel('t');
ylabel('p(n)');