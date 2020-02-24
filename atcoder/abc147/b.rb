# frozen_string_literal: true

s = gets.chomp

count = 0
(s.length / 2).times do |i|
  count += 1 if s[i] != s[-1 - i]
end

puts count
