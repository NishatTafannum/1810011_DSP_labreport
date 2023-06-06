clc;
clear all;

b = [1, 2, 3]; % Define the coefficients of the causal function

% Compute the Z-transform
syms z;
%the poly2sym function is used to convert a polynomial represented by
%its coefficients into a symbolic polynomial object.
H = poly2sym(b, z); 
X = ztrans(H);

% Find the ROC
syms r;
ROCs = solve(abs(subs(X, z, r)) < Inf, r);

% Plot the ROCs
figure;
hold on;
for i = 1:numel(ROCs)
    r = ROCs(i);
    plot(real(r), imag(r), 'bo');
end

plot(cos(0:0.01:2*pi), sin(0:0.01:2*pi), 'r--'); % Unit circle
xlabel('Real Axis');
ylabel('Imaginary Axis');
title('Region of Convergence (ROC)');
axis([-2 2 -2 2]);
axis equal;
grid on;
