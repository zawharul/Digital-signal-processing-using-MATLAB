close all;
clear all;
clc;

x1 = input('Enter the sequence: ');
n = input('Enter the length ');
m = abs(fft(x1,n));
%m =(fft(x1,n));
disp('N Point DFT of a given sequence is : ');
disp(m);
N = 0:1:n-1;

%magnitude plot
subplot(2,2,1);
stem(N,m);
xlabel('Length');
ylabel('Amplitude of x(k)');
title('Magnitude spectrun');

hold on;
%phase plot
an = angle(fft(x1,n));
disp(an);
subplot(2,2,2);
stem(N,an);
xlabel('Length');
ylabel('Phase of x(k)');
title('phase spectrun');

