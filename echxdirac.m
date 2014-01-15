function [vf] = echxdirac(delta,N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
vf = zeros (1,N);

vf(1,delta)=1;

end