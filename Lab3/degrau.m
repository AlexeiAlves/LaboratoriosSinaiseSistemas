function [x] = degrau(t,d)
x=1;
if ~((t-d)>= 0)
    x = 0;
end 
end



