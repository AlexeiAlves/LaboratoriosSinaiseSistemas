function retval = getCoeficientes (X, Y)
  retval = inv(transpose(X) * X) * transpose(X) * Y;
end
