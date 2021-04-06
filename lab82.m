N=28;
fs=8000;
n=0:15;
f1=0.22;
f2=0.34;
y1=0.5*sin(2*pi*f1*n);
y2=sin(2*pi*f2*n);
x=y1+y2;
sy1=0.5*sin(2*pi*(n/fs)*f1);
sy2=sin(2*pi*(n/fs)*f2);
xs=sy1+sy2;



if N>16
    
        n=0:15;
        
        k=0:N-1;
        
        j=length(x);
        
        h=zeros(1,N-j);
        
        i = [x h];
        
        subplot(2,1,1);
        stem(k,i);
        z=fft(xs,N);
        subplot(2,1,2);
        stem(k*fs/N,abs(z));
        xlabel('n');
        ylabel('x');   
   
 else 
        k=0:N-1;
        subplot(2,1,1);
        stem(n,x);
        z=fft(xs,N);
        subplot(2,1,2);
        stem(k*fs/N,abs(z));
        xlabel('n');
        ylabel('x');
end



