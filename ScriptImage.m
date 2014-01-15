[ir,map]=imread('imageRef.png');
gris = ([0:255]/255)'*[1 1 1];
figure (1)
image(ir)
colormap(gris)

ir=double(ir);
Ir=fft2(ir);
Ir=fftshift(Ir);

h=filtredegrad(19);
h=fftshift(h);
%figure(2)
%image(h)
%colormap(gris)
h=double(h);
H=fft2(h);
H=fftshift(H);

Dr= Ir.*H;
%spectre de puissance I
Pi=Ir;
%spectre de puissance bruit
dr=ifft2(fftshift(Dr));
dq=floor(dr);
b=(dr)-dq;
%b=double(b);
PB=fft2(b);
PB=fftshift(PB);
%filtre Wien
W=(1./H).*(abs(H).*abs(H))./((abs(H).*abs(H))+(((abs(PB)).*(abs(PB)))./((abs(Pi)).*(abs(Pi)))));
%image à traiter
[ifloue,map]=imread('imageFloue.png');
gris = ([0:255]/255)'*[1 1 1];

ifloue=double(ifloue);
Ifloue=fft2(ifloue);
Ifloue=fftshift(Ifloue);

Dtrait= Ifloue.*W;

logIM = log(abs(Dtrait)+1);
maxi=max(max(logIM));
mini=min(min(logIM));
figure(45)
image((logIM-mini)/(maxi-mini)*255);
colormap(gris);

dtrait=ifft2(fftshift(Dtrait));
figure(35)
image((dtrait));
colormap(gris);
