function [h] = filtredegrad(l)

% h=zeros(512);
%     haut=(257-floor(1/2*l));
%     bas=(256+floor(1/2*l)+(mod(l,2)));
% for i=256:258
%     for k=haut:bas
%         h(k,i)= 1/(3*l);
%     end
% end
h=zeros(512);
for i=256:258
    for k=248:266
        h(k,i)= 1/(3*l);
    end
end

end

