clc;
close all;

syms m;
x= [1 2 3 4];
l= length(x);

A=0;
z=sym('z');
for i=0:l-1
    A=A+x(i+1)*z^(-i);
end
disp('ztransformation output of causal signal: ');
disp(A);
