function y = dtft(x,N)
w=-pi:2*pi/N:pi;
n=0:50;
L=length(x);
if(N>L)
  x1=[x zeros(1,N-L)];
else;
x1=x;
endif
for i=1:N;
    X(i)=0;
    for k=1:N;
          X(i)=X(i)+x1(k).*exp(-j.*w(i).*n(k));
      end
  end
 y=abs(X);
 
 
endfunction
