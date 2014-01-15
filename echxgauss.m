function [vf] = echxgauss(a,b,N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Te = (b-a)/N;
vf = zeros (1,N);
x=a;

for k = 1:N
    vf(1,k)= exp(-pi*(x^2));
    x= x + Te;
end

end

