function [shifted] = cshift(x,shift,dim)
y=[x zeros(1,dim-length(x))];
z = 0:1:length(y)-1;
A = mod(z-shift,length(y));
shifted = y(1,A+1);