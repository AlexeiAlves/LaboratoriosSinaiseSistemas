function erro = getErro (y, ya)
  erro = sqrt(mean((y - ya).^2));
end 
