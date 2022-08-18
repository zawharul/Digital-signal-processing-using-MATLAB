clc;
clear all;
close all;
x =input("Enter the sequence: ");
N=length(x);
F=fft(x,N);
n=0:N-1
subplot(2,2,1);
stem(n,x);
xlabel("Time");
ylabel("Amplitide");
title("Input Sequence");

subplot(2,2,2);
stem(n,abs(F));
xlabel("Time");
ylabel("Magnitude");
title(" Magnitude figure");

subplot(2,2,3);
stem(n,angle(F));
xlabel("Time");
ylabel("Phase");
title(" Phase figure");

