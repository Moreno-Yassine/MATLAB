function [absi] = vecabs(a,b,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

absi = zeros(1,N);
numFreq = -N/(2*(b-a));
deltaFreq= 1/((b-a));

for k=1:N
    
    absi(1,k) = numFreq;
    numFreq = numFreq + deltaFreq;
end

end

