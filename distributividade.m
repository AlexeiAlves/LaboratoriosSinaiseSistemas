home;
clc;
clf;
t = -10:0.01:10
A = zeros(1,length(t));
B = zeros(1,length(t));
C = zeros(1,length(t));

for i = 1:length(t);
    A(i) = x1(t(i));
    B(i) = x2(t(i));
    C(i) = x3(t(i));
end
C3 = conv(A, B+C,'same');
C41 = conv(A, B, 'same');
C42 = conv(A, C, 'same');
C5 = C41 + C42;
figure (1);
subplot(1,2,1);plot(t,C3);title('Conv de x1*(x2+x3)');
xlabel('t'); ylabel('x1*(x2+x3)');
subplot(1,2,2);plot(t,C5);title('Conv de x1*x2 + x1*x3');
xlabel('t'); ylabel('x1*x2 + x1*x3')