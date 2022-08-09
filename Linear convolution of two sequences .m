clc;
x1 = input('Enter the first sequence: ');
subplot(3,1,1);
stem(x1);
ylabel('Amplitube');
title('Plot the first sequence');


x2 = input('Enter the Second sequence: ');
subplot(3,1,2);
stem(x2);
ylabel('Amplitube');
title('Plot the second sequence');

f = conv(x1,x2);
disp(f);
xlabel('time index n');
ylabel('amplitude f');
subplot(3,1,3);
stem(f);
title('linear conv of sequence');
