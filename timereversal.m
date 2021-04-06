function [x_circ_flip, n]=timereversal(x,N)
x1 = [x zeros(1,N-length(x))];
n = 0:1:length(x1)-1;
A = mod(-n,length(x1));
x_circ_flip = x1(1,A+1);
