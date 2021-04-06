xR=input('Enter the first sequence');
xI=input('Enter the second sequence');
N=input('Enter N');
xn=xR+i*xI;
L=length(xn);
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
X3=fft(x1);
abs(X3);
imag(X3);
xr=fft(xR)
ximg=fft(xI)
