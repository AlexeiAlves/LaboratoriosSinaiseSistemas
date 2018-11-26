des = input('Digite o deslocamento:');
t=-10:0.01:10;
r = zeros(1,length(t));

for i = 1:length(t)
    r(i) = rampa(t(i),des);
end

figure(1);
plot(t,r);
axis([-10 10 -0.5 1.5]);
title('Rampa Unitário');
xlabel('t');
ylabel('r(n)');