[X,Y] = meshgrid(-3*pi:.3:3*pi);   
Z = cos(Y) * sin(X);
g = surf(X,Y,Z);
shading interp
hold on;
contour3(X,Y,Z, [-80:13: 80],'k');
% Use the axes x and Y limits to find the co-ordinates for the patch
x1 = [ -10 -10 10 10];
y1 = [10 -10 -10 10];
z1 = [0.5 0.5 0.5 0.5];  % creates a 1x4 vector representing the Z coordinate values 
%p = patch(x1,y1,z1, 'b');
% Set the Face and edge transparency to 0.2 using the following properties
%set(p,'facealpha',0.7)
%set(p,'edgealpha',0.2)
hold off;
