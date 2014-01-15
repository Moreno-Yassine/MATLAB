[ir,map]=imread('imageRef.png');
gris = ([0:255]/255)'*[1 1 1];

ir=double(ir);
Ir=fft2(ir);
Ir=fftshift(Ir);

h=zeros(512);
for i=255:259
    for j=255:259
        h(i,j)=1/9;
    end
end
h=fftshift(h);

h=double(h);
H=fft2(h);
H=fftshift(H);

Dtrait= Ir.*H;

dtrait=ifft2(fftshift(Dtrait));
figure(35)
image((dtrait));
colormap(gris);
