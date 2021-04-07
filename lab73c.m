for n=0:63;
  y(n+1)=cos(0.25*pi*n);
end
for n=0:63;
  z(n+1)=sin(0.75*pi*n);
end
N=64
x=y+z;
L=length(x);
x1=[x zeros(N-L)];
x2=timereversal(x1,N);
X=conj(x2);
for n=1:N
  xec(n)=0.5*(x1(n)+X(n));
  xoc(n)=0.5*(x1(n)-X(n));
end
n=0:63;
Xec=xec;
Xoc=xoc;
disp('dft of x[n]=cos(0.25*pi*n)')
X1=fft(Xec);
subplot(2,1,1)
stem(n,X1);
xlabel('k');ylabel('x[k]');title('dft of x[n]=cos(0.25*pi*n)');
disp('dft of x[n]=cos(0.25*pi*n)')
X2=fft(Xoc);
subplot(2,1,2)
stem(n,X2);
xlabel('k');ylabel('x[k]');title('dft of x[n]=sin(0.75*pi*n)');