function [x] = pulsoret(t,d)
x = degrau(t,d) - degrau(t,d+1);
end

