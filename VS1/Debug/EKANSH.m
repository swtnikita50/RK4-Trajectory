clc;
clear all;
close all;
fprintf('EKANSH');
newline;
fprintf('2K19/EC/058');
newline;
%Unit Impulse Function
n=input('Enter n values');
newline;

t=-7:1:7;
y=[zeros(1,7), ones(1,1), zeros(1,7)];
subplot(3,2,1);
fprintf('plotting Unit Impulse Function');
stem(t,y,'Color',[0.6,0.4,0.1]);
title('Unit Impulse');
ylabel('Amplitude');
xlabel('Time');

newline;
% Unit step Function
fprintf('plotting Unit step Function');
t=-n+1:n-1;
y1=[zeros(1,n-1),ones(1,n)];
subplot(3,2,2);
stem(t,y1);
title('Unit Step');
ylabel('Amplitude');
xlabel('Time');

newline;
% Ramp Function
fprintf('plotting Ramp Function');
t=0:1:n-1
subplot(3,2,3);
stem(t,t,'m');
title('Ramp Function');
ylabel('Amplitude');
xlabel('Time');
newline;
fprintf('Exponential Function');
newline;
t=0:0.0000001:2;
a=input('Enter a value in (e^at)');
y2=exp(a*t);
subplot(3,2,4);
fprintf('plotting Exponential Function');
plot(t,y2,'r');
title('Exponential Function');
xlabel('Time');
ylabel('Amplitude');

newline;
%Sine Function
fprintf('Sine function');
newline;
a1=input('Enter the Amplitude for Sine Function');
f1=input('Enter the Frequency for Sine Function');
t1_start=input('Enter the starting time for Sine Function');

t1_end=input('Enter the ending time for Sine Function:');
t1=t1_start:0.1:t1_end;
xs=a1*sin(2*pi*f1*t1);
figure(1);
subplot(3,2,5);
fprintf('plotting Sine function');
stem(t1,xs,'g');
title('Sine Function');
xlabel('Time');
ylabel('Amplitude');
%Cosine Function
fprintf('cosine function');
newline;
a2=input('Enter the Amplitude for cosine Function:');
f2=input('Enter the Frequency for cosine Function:');
t2_start=input('Enter the starting time for cosine Function:');
t2_end=input('Enter the ending time for cosine Function:');
t2=t2_start:0.1:t2_end;
xc=a2*cos(2*pi*f2*t2);
subplot(3,2,6);
fprintf('plotting cosine function');
stem(t2,xc,'k');
title('Cosine Function');
xlabel('Time');
ylabel('Amplitude');