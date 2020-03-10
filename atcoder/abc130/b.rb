# frozen_string_literal: true

n, x = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

ans = 1
d = 0

l.each do |li|
  d += li
  ans += 1 if d <= x
end

puts ans
