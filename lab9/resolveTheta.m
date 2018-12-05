	home;
  clear;
  
  load('grupo2.mat');
	y = z1(:,1);
	x = z1(:,2);
	
	x1 = xk(y,-1);	
	x2 = xk(y,-2);
	x3 = xk(x,-1);
	x4 = xk(x,-2);

	X = [x1,x2,x3,x4];
	invX = inv(X'*X);
	theta = invX*X'*y;
	yL = X*theta;
  
  erro = getErro(y, yL);

	%% aqui tem um teste pra saber se o ganho ta certo
	transF = tf([theta(3),theta(4),0],[-theta(1),-theta(2),1]);
	ganho = (transF);
	%%

	disp('O valor de theta é:');
	disp(theta);
	disp('esta aproximação gera um erro, MSE, de :');
	disp(immse(y,yL));

	disp('Para estes valores, temos a seguinte Função de Transferencia:');
	disp(transF);
	disp('O ganho do sistema é:');	%% não sei se da certo
	disp(ganho);			%% É pra dar +\- 70, se não tiver ignora , ou tu tenta descobrir como calcula o ganho
