# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars

(n - 1).times do |i|
  l = s[i]
  r = s[i + 1]

  s[i] = nil if l == r
end

puts s.compact.count
