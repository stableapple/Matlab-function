bits=[1 0 1 1 0];
t=0:1:length(bits)-1;
for j = 0:length(bits)-1
  if bits(j+1) == 0
    res(j+1)=-1
  else
    res(j+1) = 1;
  end
end
i=1;
t=0:0.01:length(bits);
for j=1:length(t)
  if t(j)<=i
    y(j)=res(i);
  else
     y(j)=res(i);
    i=i+1;
  end
end
plot(t,y)
axis([0 6 -2 2])
xlabel('n');ylabel('y(t)');title('unipolar NRZ');