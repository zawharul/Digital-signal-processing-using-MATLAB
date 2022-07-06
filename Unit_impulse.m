% IT IS USED FOR COMMENT WRITING

%Unit impulse
% n =-10:10; that means we are taking time value from -10 to 10 , total 21
% values and n is a variable for declearing discrete time signal
% u is used to define unit impulse and zeros(1,10) means 1 to 10 in both
% sides is 0 value and only 0 position is 1 or i say in only one position
% is 1
%subplot is used to identify in which position of the matrix it will
%positioned.
%plot is used to draw a figure in 2D 
%stem is used to show a signal in discrete form

n =-10:10;
u = [zeros(1,10) 1 zeros(1,10)];
subplot(2,2,1);
plot(n,u);
title("Unit Impulse Wave form in continuse signal");
xlabel("n");
ylabel("u(n)");

%discrete signal
subplot(2,2,3);
plot(n,u);
stem(n,u);
title("Unit Impulse Wave form in discrete signal");
xlabel("n");
ylabel("u(n)");

