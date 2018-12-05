clear;
home;

%y(k) = a*y(k-1) + a1*y(k-2) + b*u(k-1) + b1*u(k-2)

load grupo2.mat;

x0 = z1(:, 2);
y0 = z1(:, 1);

x1 = x0(1:(size(x0)-1)); %x(k-1)
x2 = x0(1:(size(x0)-2)); %x(k-2)
x2 = [0; x2];

y = y0(2:size(y0)); %y(k)
y1 = y0(1:(size(y0)-1)); %y(k-1)
y2 = y0(1:(size(y0)-2)); %y(k-2)
y2 = [0; y2];

X = [y1, y2, x1, x2];
Y = y;

T0 = getCoeficientes(X, Y); %obtém os coeficientes

ya = X * T0; %y estimado

erro = getErro(y, ya); %erro quadrático

n = 1:19; %intervalo
figure(1);
plot(n, y, 'b:', 'LineWidth', 1);
hold on;
plot(n, ya, 'r-.', 'LineWidth', 1);
xlabel('n');
ylabel('y(n)');
grid on;
saveas(1, 'comparacaoForno.png');
