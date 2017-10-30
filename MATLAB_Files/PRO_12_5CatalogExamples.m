%Elliptical Paraboloid
[X,Y] = meshgrid(-3*pi:.3:3*pi); 
Z = X.^2 + Y.^2;
%g = surf(X,Y,Z); %uncomment to see this graph
shading interp

%Hyperboloid Paraboloid
[X,Y] = meshgrid(-3*pi:.3:3*pi); 
Z = -X.^2 + Y.^2 / 9;
%g = surf(X,Y,Z); %uncomment to see this graph
shading interp

%f = @(X,Y,Z) X.^2 + Y.^2 + Z.^2;
%fimplicit3(f)

%Hyperboloid of one sheet
[X,Y,Z] = meshgrid(-12:0.5:12,-12:0.5:12,-12:0.5:12);
a=1;
b=2;
c=2;
F = X.^2/a^2 + Y.^2/b^2 - Z.^2/c^2;
p=patch(isosurface(X,Y,Z,F,1)); % This is the key step. It involves getting the part of the volume corresponding to the surface defined by the equation
set(p,'FaceColor','red');
view(3);

