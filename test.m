im = imread('th.jpg');
im = rgb2gray(im);
imshow(im);
im = im(5:394, 5:394); %È¡390*390µÄÍ¼Æ¬
imwrite(im,'1.bmp');

t = linspace(0, 2 * pi, 1000);
r = 195;
d = 195
x = d + r * sin(t);
y = d + r * cos(t);

BW = poly2mask(x,y, 390, 390);

a = immultiply(im, BW);
imshow(a);

imwrite(a,'2.bmp');