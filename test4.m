im = imread('2.jpg');
gray = rgb2gray(im);
gray = gray(6:395,6:395);
%imshow(gray);
%t = 0:pi/90:

t = 0:pi/90:2*pi;
t = t(1:180);
r = 195;
x = r*sin(t)+r;
y = r*cos(t)+r;
BW = poly2mask(x, y, 390, 390);
grayROI = immultiply(gray, BW);
imshow(grayROI);
