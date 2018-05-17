

im = imread('2.bmp');

avg = mean(im(:)) * (4 / pi);

flag = ones(180);
flag = tril(flag);