x1=[1 2 3 4];
x2=[1 2 2 1];
X1=fft(x1);
X2=fft(x2);
a1=2;
a2=3;
x1=a1*x1;
x2=a2*x2;
x=x1+x2;
X1=a1*X1;
X2=a2*X2;
LHS=fft(x);
RHS=X1+X2;
disp('LHS is equal to')
disp(LHS)
disp('RHS is equal to')
disp(RHS)