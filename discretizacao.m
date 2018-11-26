home;
clc;
clf;
t = -10:0.1:10;
A = zeros(1,length(t));
B = zeros(1,length(t));

for i = 1:length(t)
    A(i) = x1(t(i));
    B(i) = x2(t(i));
end
figure(1);
C1 = conv(A,B,'same');
stem(t,C1);
xlabel('t'); ylabel('x1*x2');