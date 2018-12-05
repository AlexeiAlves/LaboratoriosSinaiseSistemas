function y = xk(x,k)
    y = [];
    for i = [1:length(x)]
       if ((i+k)<=0) 
           y = [y;0];
       elseif ((i+k)>length(x))
           y = [y;0];
       else
           y = [y;x(i+k)];
       end
    end    
        
end
