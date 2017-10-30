[X,Y] = meshgrid(-5:.5:5);             

% Paraboloid from Example 1
Z = X.^2 + Y.^2;
surf(X,Y,Z)

% Exponential e graph from Example 2
[X,Y] = meshgrid(-5:.1:5);                                
Z = exp(-(X.^2+Y.^2))
surf(X,Y,Z)

% Example 3 with transparent plane
Z = X.^2 + Y.^2;
surf(X,Y,Z)
hold on;
% Use the axes x and Y limits to find the co-ordinates for the patch
x1 = [ -4 -4 4 4];
y1 = [0 0 0 0];
z1 = [0 30 30 0];  % creates a 1x4 vector representing the Z coordinate values 
p = patch(x1,y1,z1, 'b');
% Set the Face and edge transparency to 0.2 using the following properties
set(p,'facealpha',0.2)
set(p,'edgealpha',0.2)
hold off;

% Plane from example 4
Z = 1 + X - Y;
surf(X,Y,Z)

% Cylinder with radius 1 from Example 5
[X,Y,Z] = cylinder(50);
surf(X,Y,Z)

% Next
figure('Name','Example 12.2.1', 'OuterPosition',[1,1,1440,900])
[X,Y] = meshgrid(-5:.5:5);    
Z = 1 + X - Y;
subplot(2,2,1); surf(X); title('X'); % First # is number of rows, second is number of column
shading interp;
Z = X.^2 + Y.^2;
T = title("$f(x,y) = x^2 + y^2$");
set(T,'Interpreter','latex');
subplot(2,2,2)
T = title("$f(x,y) = x^2 + y^2$");
set(T,'Interpreter','latex');