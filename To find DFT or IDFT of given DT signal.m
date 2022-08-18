% To find DFT or IDFT of given DT signal

% means commnet

clc;
clear all;
close all;
%using predefined input => x=[0 1 2 3]; 
%x=[0 1 2 3];

% This is for input from the useer => x =input("Enter the sequence : ");
x =input("Enter the sequence : ");
N=length(x);

X=zeros(N,1);
for k=0:N-1
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-j*2*pi*k*n/N);
    end
end
n=0:N-1;
subplot(2,2,1);
stem(n,x);
title("Input Discrete signal");
xlabel("Time");
ylabel("Amplitude");

% it is the Discrete signal 
grid on;

%Magnitide and phase is the output of DFT process
subplot(2,2,2);
stem(n,abs(X));
title("Magnitude Response for DFT signal");
xlabel("Magnitude");
ylabel("Amplitude");
grid on;

subplot(2,2,3);
stem(n,angle(X));
title("Phase Response for DFT Signal");
xlabel("Time");
ylabel("Phase");
grid on;

y=zeros(N,1);
for n=0:N-1
    for k=0:N-1
        y(n+1)=y(n+1)+X(k+1)*1/N*exp(j*2*pi*k*n/N);
    end
end
disp("IDFT is: ");
disp(y);
%IDFT Value is showing through x+iy form

k=0:N-1;
subplot(2,2,4);
stem(k,abs(y));
title("IDFT");
xlabel("Time");
ylabel("Amplitude");
%IDFT signal 
