function impar = func_impar(t, zt)
  ztp = zt(t);
  ztn = zt(-t);
  
  impar = (ztp - ztn)/2;
end
