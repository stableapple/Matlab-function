x=[1+i*4 -2+i*3 4-2*i -5-i*6];
N=4
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
X1=fft(Xec)
X2=fft(Xoc)
X3=fft(x1);
abs(X3)
imag(X3)
