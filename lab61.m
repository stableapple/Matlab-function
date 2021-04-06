  N=16;
  w=0:2*pi/1000:2*pi;
  n=0:N-1;
  x=cos(6*pi*n/N);
  x1=zeros(1,length(w));
  for i=1:length(w);
    for k=1:length(n);
      x1(i)=x1(i)+x(k)*exp(-j*w(i)*n(k));
    endfor
  endfor
  y=abs(x1);
  subplot(2,1,1);
  stem(x);
  ylabel("X(e^jw)");xlabel("w");
  subplot(2,1,2);
  plot(w,y);
  hold on
  w=0:2*pi/16:2*pi;
  x2=zeros(1,length(w));
  for i=1:length(w);
    for k=1:length(n);
      x2(i)=x2(i)+x(k)*exp(-j*w(i)*n(k));
    endfor
  endfor
  stem(w,abs(x2));
  ylabel("X(k)");xlabel("w");