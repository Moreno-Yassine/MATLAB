function [vf] = echxrect(a,b,tau,N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Te = (b-a)/N;
vf = zeros (1,N);
x=a;

for k = 1:N
    if (x>=-tau/2 && x<=tau/2)
    vf(1,k)= 1;
    end
    x= x + Te;
end

end