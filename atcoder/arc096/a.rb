# frozen_string_literal: true

def cin
  gets.split.map(&:to_i)
end

a, b, c, x, y = cin
ans1, ans2, ans3 = 0
min, max = [x, y].minmax

ans1 = c * max * 2
ans2 = if x >= y
         c * min * 2 + a * (x - y)
       else
         c * min * 2 + b * (y - x)
       end

ans3 = a * x + b * y
puts [ans1, ans2, ans3].min
