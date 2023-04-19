% Fitting a plane to a set of points to return A matrix
% and b vector.
% 
%Adeniyi Adeleke
%
%Defining the function
%

function [l0, m0, z0, A, b] = aadelek2_plane(pts)
%  this function takes an array of (x,y,z) points and fits a line
%
%
x = pts(:,1);
y = pts(:,2);
z = pts(:,3);
n = length(pts);
% Construct design matrix

A_1 = [ones(n,1), x, y];
A_2 = [x, y, ones(n,1)];

% Construct the response vector
b_1 = z;

A = A_1' * A_2;
b = A_1'* b_1;

% Calculate the coefficients of the least square plane
coefficients = A\b;

% Extract the coefficients of the plane
l0 = coefficients(1);
m0 = coefficients(2);
z0= coefficients(3);

end