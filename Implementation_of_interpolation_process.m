clc;
clear all;
close all;

F=input("Enter the frequency of the signal: ");
P=input("Enter the interpulator factor: ");
N=input("Enter the length of the signal: ");

t=0:1:N-1
%X = sin(2*pi*F*t);
X = sin(2*3.14*F*t);


i=interp(X,P);
subplot(2,1,1);
stem(X);
title("Original signal");
subplot(2,1,2);
stem(i);
title("Interpolated signal");

