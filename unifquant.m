function [output,q]=unifquant(signal,L)
output=(zeros(1,length(signal)));
xmax=max(signal);
xmin=min(signal);  
q=(xmax-xmin)/(2^L);
  for i =1: length(signal)
     output(i)=round((signal(i))*2^(L-1))/(2^(L-1))-sign(signal(i))*q/2;
  end
end
