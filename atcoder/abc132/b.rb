# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)

ans = 0
(n - 2).times do |i|
  a, b, c = p[i..i + 2]
  ans += 1 if (a < b && b < c) || (c < b && b < a)
end

puts ans
