function [vf] = echxRectPer( a,b,tau,N)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
Te = (b-a)/N;
vf = zeros (1,N);
x=a;
i=0;
for k = 1:N
    if (x>=-tau/2+(i*tau) && x<=tau/2+(i*tau))
    vf(1,k)= 1;
    else
        if (k>1)
            if (vf(1,k-1)==1)
                i=i+1;
            end
        end
    end
    x= x + Te;
end

end

