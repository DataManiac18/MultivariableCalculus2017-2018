%Example 1
[X,Y] = meshgrid(-3*pi:.3:3*pi); 
Z = 30*X - Y.^3;
g = surf(X,Y,Z);

%Example 2
[X,Y] = meshgrid(-3*pi:.3:3*pi); 
Z = X.^2 + Y.^2;
g = surf(X,Y,Z);
