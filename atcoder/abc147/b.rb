# frozen_string_literal: true

s = gets.chomp

ans = (s.length / 2).times.count do |i|
  s[i] != s[-1 - i]
end

puts ans
