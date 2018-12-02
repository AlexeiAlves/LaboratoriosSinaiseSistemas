clc;
clf;
close all;
R = 1;
b = 0.1;
ke = 0.01;
kt = 0.01;
j = 0.01;
L = 0.005;
L1=0.5;
Tm = j/b;
%Te = L/R;
Te = L1/R;

x0 = (R*b) + (ke * kt);
x1 = (R*b)*(Tm+Te);
x2 = (R*b*Tm*Te);

num = [kt];
den = [x2 x1 x0];
t1 = tf(num,den);
step(t1);
%axis([0 10 0 0.1]);

%Acrescentando:
%Constante de tempo simplificada:
Ts = ((R*j)/(R*b)+(ke*kt));
%Ganho simplificado em ra/v*s
ks = (kt/((R*b)+(ke*kt)));
%Função de transferência da posição:
num = [ks];
den = [den,0];
t2 = tf(num,den);
%figure(1);
%step(t2);
%Função de transferência simplificada da posição
num = [ks];
den = [Ts 1 0];
t3 = tf(num,den);
%figure(2);
%step(t3);

%Equação 15 - função de transferência
num = [ks];
den = [Tm 1];
t4 = tf(num,den);
%figure(3);
%step(t4);







