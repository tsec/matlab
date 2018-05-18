im = imread('2.jpg');
gray = rgb2gray(im);

x=downsample(gray, 2);
y=x';
z=downsample(y, 2);

gray=z';

rotate = imrotate(gray, 560, 'bicubic', 'crop');

t = linspace(0, 2*pi, 1000);
BW = poly2mask(100*cos(t)+100, 100*sin(t)+100, 200, 200);
grayROI = immultiply(rotate, BW);
imshow(grayROI);