ls
t = 1
t
exit
# Octave 4.4.0, Wed May 16 14:38:15 2018 GMT <unknown@WINDTALKER>
imread('th.jpg')
imread('th.jpg');
im = imread('th.jpg')
im = imread('th.jpg');
im = rgb2gray(im);
imshow(im);
im = imread('th.jpg');
im = rgb2gray(im);
imshow(im);
im = im(5:395, 5:395);
imshow(im);
im = imread('th.jpg');
im = rgb2gray(im);
im = im(5:394, 5:394);
imwrite('1.bmp');
imwrite(im,'1.bmp');
t = 0:pi/90:2*pi
t = 0:pi/90:2*pi;
t=t(1:180)
t=t(1:180);
r = 195;
x = r + r * sin(t);
y = r + r * cos(t);
help poly2mask
pkg load image
help poly2mask
BW = poly2mask(x,y, 390, 390);
imshow(BW);
a = immultiply(im, BW);
imshow(a);
imwrite(2.bmp);
imwrite(a,'2.bmp');