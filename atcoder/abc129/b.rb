# frozen_string_literal: true

n = gets.to_i
ws = gets.split.map(&:to_i)

overall = ws.inject(:+)
ans = overall

s1 = 0
ws.each do |w|
  s1 += w
  s2 = overall - s1
  abs = (s1 - s2).abs

  ans = abs if abs <= ans
end

puts ans
