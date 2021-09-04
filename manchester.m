bits=[1 0 1 1 0 0 0 0 1 1 1 1 0 1]
n=100;
t=0:0.01:length(bits);
x = zeros(1,length(t));
for i=1:length(bits)
  if bits(i)==1
    x((i-1)*n+1:(i-1)*n+n/2) = 1;
    x((i-1)*n+n/2:i*n) = -1;
  else
    x((i-1)*n+1:(i-1)*n+n/2) = -1;
    x((i-1)*n+n/2:i*n) = 1;
  end
end
plot(t,x);
axis([0 16 -2 2])
xlabel('n');ylabel('y(t)');title('manchester');