A = input("Enter the amplitude : ");
F = input("Enter the frequency : ");
t = 0:0.1:10;

%exp Wave
y1 = A*exp(2*pi*F*t);
subplot(2,2,1);
plot(t,y1);
title("EXP wave");
xlabel("Time");
ylabel("Amplitude");