function [x] = rampa(t,d)
x=0;
if ((t-d) >= 0)
    if ((t-d)<=1)
        x = t-d;
    else
        x = 0;
    end
end
end
        
        
    


