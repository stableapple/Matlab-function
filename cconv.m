function [Xn]=cconv(xn,hn,num,N)
xn=input("Enter the x[n]");
hn=input("Enter the h[n]");
len=length(xn);
N=input("Enter the points");
num=input("Enter 1 or 2");
if(num == 1)
  xk=dft(xn,N);
  hk=dft(hn,N);
  Xk=xk.*hk;
  Xn=idft(Xk);
  disp(abs(Xn));
end

if(num==2)
  x1 = [xn zeros(1,N-len)];
  L=length(x1);
 for n=0:L-1
  ck=cshift(x1,n,N);
  y(:,:,n+1)=ck';
  end
X2n=y*hn';
disp(X2n');
end
