function [vf] = demodulation(a,b,f1,f2,N)

Te = (b-a)/N;
vf = zeros (1,N);
x=a;

for k = 1:N
    vf(1,k)=(cos(2*pi*x)+2*cos(4*pi*x)+3*cos(6*pi*x)+4*cos(8*pi*x))*(cos(2*pi*f1*x))*(cos(2*pi*f2*x));
    x= x + Te;
end


end

