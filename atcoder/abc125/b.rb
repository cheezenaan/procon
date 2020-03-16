# frozen_string_literal: true

n = gets.to_i

vs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  diff = vs[i] - cs[i]
  ans += diff if diff >= 0
end

puts ans
