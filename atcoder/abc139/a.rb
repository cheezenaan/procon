# frozen_string_literal: true

s = gets.chomp
t = gets.chomp

ans = 0
3.times.inject(0) do |r, i|
  r + 1 if s[i] == t[i]
end

puts ans
