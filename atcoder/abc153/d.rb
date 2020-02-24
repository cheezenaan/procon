# frozen_string_literal: true

h = gets.to_i

d = 1
ans = 0

while h >= d
  q = h / d
  ans += d
  d *= 2
end

puts ans
