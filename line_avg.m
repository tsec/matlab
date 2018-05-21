function [n] = line_avg(start_point, end_point, im)
  start_point;
  end_point;
  
  dx = abs(start_point(1) - end_point(1));
  dy = abs(start_point(2) - end_point(2));

  if dx >= dy
    if start_point(1) < end_point(1)
      x = floor(start_point(1)):ceil(end_point(1));
      y = linspace(start_point(2), end_point(2), size(x, 2));
      y = round(y);
    else
      x = floor(end_point(1)):ceil(start_point(1));
      y = linspace(end_point(2), start_point(2), size(x, 2));
      y = round(y);
    endif
  else
    if start_point(2) < end_point(2)
      y = floor(start_point(2)):ceil(end_point(2));
      x = linspace(start_point(1), end_point(1), size(y, 2));
      x = round(x);
    else
      y = floor(end_point(2)):ceil(start_point(2));
      x = linspace(end_point(1), start_point(1), size(y, 2));
      x = round(x);
    endif
  endif

  im_sum = 0;

  for i = 1:size(x, 2)
 %   printf("i: %d, x: %d, y: %d, im: %d\n", i, x(i), y(i), im(y(i), x(i)));
    im_sum = double(im_sum) + double(im(y(i), x(i)));
  endfor
  n = im_sum / size(x, 2);
endfunction
