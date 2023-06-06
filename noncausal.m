clc;
close all;

syms m;
x= [1 2 3 4 5];
disp(x);
l= length(x);
disp(l);
k= input('Enter index: ');
p=[];

for i=0:k
    p(i+1)=x(i+1);
end
disp(p);

    y=fliplr(p);
    l1=length(y);
    syms m;
    disp(y);

    A=0;
    z=sym('z');
    for i=0:l1-1
        A = A + y(i+1) * z^(i);
    end
disp('ztransformation output of anti-causal part: ');
disp(A);


A1=0;
z=sym('z');
for i=k+1:l-1
    A1 =A1 +x(i+1)*z^(-i+k);
end
disp('ztransformation output of causal part: ');
disp(A1);

disp('Non_causal signal ztransformation: ')
disp(A1+A);

