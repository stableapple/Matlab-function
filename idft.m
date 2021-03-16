function Xn = idft(xk,N)
  L=length(xk);
  if(N>L)
   x1=[xk zeros(1,N-L)];
  else
    x1=xk;
  endif
   
for n = 0:N-1
x(n+1) = 0;
for k = 0:N-1
    x(n+1) = x(n+1)+(1/N)*xk(k+1)*exp(1i*2*pi*(k)*(n)/N);
end
end
x2=abs(x);
disp(x2)
stem(x2)
ylabel("X(n)");xlabel("n");