# frozen_string_literal: true

n = gets.to_i
ss = n.times.map { gets.chomp }

ans = 0
counts = Hash.new(-1)

ss.each do |s|
  s = s.chars.sort!.join
  counts[s] += 1
  ans += counts[s]
end

puts ans
