bits=[1 0 1 1 0 0 0 0 1 1 1 1 0 1]
t=0:0.01:length(bits);
i=1;
a=0;
b=0.5;
for j = 1:length(t)
  if t(j)>=a && t(j)<=b
    res(j)=bits(i)
  elseif t(j)>b && t(j)<=i
    res(j) = 0;
  else
    i=i+1;
    a=a+1;
    b=b+1;
  end
end
plot(t,res)
axis([0 16 -2 2])
xlabel('n');ylabel('y(t)');title('unipolar RZ');