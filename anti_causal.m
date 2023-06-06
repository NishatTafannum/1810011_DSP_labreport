clc;
close all;

syms m;
x= [1 2 3 4];
y=fliplr(x);
disp(y);
l= length(y);

A=0;
z=sym('z');
for i=0:l-1
    A = A + y(i+1) * z^(i);
end
disp('ztransformation output of anti-causal signal: ');
disp(A);
