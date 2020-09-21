clc;
clear all;
close all;
x=input('Enter the 1st sequence ');
h=input('Enter the 2nd sequence ');
m=length(x)
n=length(h)

X=[x,zeros(1,n)];
H=[h,zeros(1,m)];


for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end

subplot(3,1,1);
stem(X);
ylabel('X[n]   --->')
xlabel('(a)   --->')
X
title(['Input'])

subplot(3,1,2);
stem(H);
ylabel('H[n]   --->')
xlabel('(b)   --->')
H
title(['System'])

subplot(3,1,3);
stem(Y)
ylabel('Y[n]   ---->')
xlabel('(c)   --->')
Y
title(['Output'])
sgtitle("Done By Ekansh (2K19/EC/058)")

disp('Press a key !')  % Press a key here.You can see the message 'Paused: Press any key' in        % the lower left corner of MATLAB window.
pause;