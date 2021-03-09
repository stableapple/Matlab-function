function Xn = idft(xk)
  L=length(xk);
   ixk=zeros(1,L);
  for n=0:L-1
    for k=0:L-1
        ixk(n+1)=ixk(n+1)+(xk(k+1)*exp(i*2*pi*k*n/L));
    end
end
Xn=ixk./L;

