A = input("Enter the amplitude : ");
F = input("Enter the frequency : ");
t = 0:0.1:10;

%Sine Wave
y1 = A*sin(2*pi*F*t);
subplot(2,2,1);
plot(t,y1);
title("Sine wave");
xlabel("Time");
ylabel("Amplitude");

%Cos wave
y2 = A*cos(2*pi*F*t);
subplot(2,2,2);
plot(t,y2);
title("Cos wave");
xlabel("Time");
ylabel("Amplitude");
