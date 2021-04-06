xn=input('Enter the sequence');
xR=[abs(xn)];
xI=[imag(xn)];
x1=[xn zeros(N-L)];
x2=timereversal(x1,N);
X=conj(x2);
for n=1:N
  xec(n)=0.5*(x1(n)+X(n));
  xoc(n)=0.5*(x1(n)-X(n));
end
Xec=xec;
Xoc=xoc;
X1=fft(Xec)
X2=fft(Xoc)
xr=fft(xR)
ximg=fft(xI)
