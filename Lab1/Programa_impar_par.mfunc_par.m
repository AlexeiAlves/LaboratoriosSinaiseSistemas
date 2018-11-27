function impar = func_par(t, zt)
  ztp = zt(t);
  ztn = zt(-t);
  
  impar = (ztp + ztn)/2;
end
