# frozen_string_literal: true

n = gets.to_i
w = gets.split.map(&:to_i)

ans = (w[0] - w[1..-1].inject(:+)).abs

(n - 1).times do |i|
  s1 = w[0..i].inject(:+)
  s2 = w[(i + 1)..-1].inject(:+)

  abs = (s1 - s2).abs
  ans = abs if abs <= ans
end

puts ans
