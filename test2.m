clear all
im = imread('2.bmp');

im_avg = mean(im(:)) * (4 / pi);

flag = zeros(180);
%flag = tril(flag);
%line_avg()

t = 0:pi/90:2*pi;
t=t(1:180);

r = 194;
d = 195;
x = d + r * sin(t);
y = d + r * cos(t);

plot(x, y, 'k');
hold on
point(:,1) = x;
point(:,2) = y;

tmp_index = 0;
start_index = 1;
end_index = 90;

%avg = line_avg(point(start_index,:), point(end_index,:), im)
xx = 0;
yy = 0;
if (true)
for m = 1:180
  for n = m + 1:180
%    if (m == n)
%      flag(m, n) = 0;
%      continue;
 %   endif
    
    flag(m, n) = line_avg(point(m,:), point(n,:), im);n
    flag(n, m) = flag(m, n);
  end
end

endif

if(false)
while(true)
  xx++;
  avg = line_avg(point(start_index,:), point(end_index,:), im);
  
%  printf("start: %d, end: %d, avg: %f\n", start_index, end_index, avg);
  if (avg > im_avg)
  %不需要划线，起始点不变，寻找下一个结束点
    flag(start_index, end_index) = -1;
    flag(end_index, start_index) = -1;
    cnt = 0;
    while(cnt < 180)
      cnt++;
      end_index++;
      if(end_index == start_index)
        end_index++;
      end
      
      if(end_index > 180)
        end_index = 1;
      end

      if(flag(start_index, end_index) == 0)
        break;
      end    
    endwhile
    
    if(cnt == 180)
      break;
    end
  else
    %需要划线，做标记
    yy++;
    flag(start_index, end_index) = 1;
    flag(end_index, start_index) = 1;
    
    plot([point(start_index,1), point(end_index,1)], [point(start_index,2), point(end_index,2)], 'k');
 
    %将新的起始点更新为此次的结束点
    tmp_index = start_index;
    start_index = end_index;

    %寻找结束点
    end_index = tmp_index;
    cnt = 0;
    while(cnt < 180)
      cnt++;
      end_index++;
      if(end_index == start_index)
        end_index++;
      end
      
      if(end_index > 180)
        end_index = 1;
      end

      if(flag(start_index, end_index) == 0)
        break;
      end    
    endwhile
  end
endwhile

printf("end: %d:%d\n", xx, yy);
endif
%可能选取的起始点有问题，没有画几条线