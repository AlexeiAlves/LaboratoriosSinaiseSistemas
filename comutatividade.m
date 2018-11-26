home;
clc;
clf

t=-10:0.01:10;
A = zeros(1,length(t));
B = zeros(1,length(t));

for i = 1:length(t)
    A(i) = x1(t(i));
    B(i) = x2(t(i));
end
%'same' retorna  a parte central da convolução
C1 = conv(A,B,'same');
C2 = conv(B,A,'same');

figure;
subplot(1,2,1); plot(t,C1); title('Conv de x1*x2');
xlabel('t');ylabel('x1*x2')
subplot(1,2,2);plot(t,C2); title ('Conv de x2*x1');
xlabel('t'); ylabel ('x2*x1')
