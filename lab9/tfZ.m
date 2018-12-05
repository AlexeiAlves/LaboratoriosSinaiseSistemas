function [ tfZ ] = tfZ( theta )
num =  [theta(3),theta(4)];
den =  [-theta(1),-theta(2),1];
x=0.25;
Ts = x; Ts = 0.25
tfZ = tf (num ,den , Ts);
tfL = d2c(tfZ);
end

