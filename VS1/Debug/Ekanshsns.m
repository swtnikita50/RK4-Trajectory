clc;
clear all;
close all;
x=input('Enter the Sequence');
y=xcorr(x,x);
y
subplot(2,1,1);
stem(x,'r');
sgtitle("EKANSH 2K19/EC/058");
title("X[n]");
ylabel("X[n]---->");
xlabel("n--->");

subplot(2,1,2);
stem(y,'r');
title("Y[n]");
ylabel("Y[n]---->");
xlabel("n--->");


disp('Press a key !')  % Press a key here.You can see the message 'Paused: Press any key' in        % the lower left corner of MATLAB window.
pause;
