# frozen_string_literal: true

s = gets.chomp

ans = 999
(s.length - 2).times do |i|
  x = s[i, 3].to_i
  diff = (x - 753).abs

  ans = diff if diff <= ans
end

puts ans
