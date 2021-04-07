for n=0:10;
  x(n+1)=10*(0.8)^n;
end
N=11
L=length(x);
x1=[x zeros(N-L)];
x2=timereversal(x1,N);
X=conj(x2);
for n=1:N
  xec(n)=0.5*(x1(n)+X(n));
  xoc(n)=0.5*(x1(n)-X(n));
end
Xec=xec;
Xoc=xoc;
X1=[fft(Xec) zeros(N-L)]
X2=[fft(Xoc) zeros(N-L)]
X3=fft(x1);
abs(X3)
imag(X3)
