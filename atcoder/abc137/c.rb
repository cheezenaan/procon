# frozen_string_literal: true

n = gets.to_i

counts = Hash.new(-1)
ans = 0

n.times do
  s = gets.chomp.chars.sort!.join

  counts[s] += 1
  ans += counts[s]
end

puts ans
