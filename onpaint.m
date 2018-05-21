clear all
load flag.mat
load im_flag.mat

t = 0:pi/90:2*pi;
r = 194;
d = 195;
x = d + r * sin(t);
y = d + r * cos(t);

plot(x, y, 'k');
axis equal

