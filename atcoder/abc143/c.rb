# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars

ans = 1
(n - 1).times do |i|
  ans += 1 if s[i] != s[i + 1]
end

puts ans
