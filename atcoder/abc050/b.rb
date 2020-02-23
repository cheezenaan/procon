# frozen_string_literal: true

n = gets.to_i
t = gets.split.map(&:to_i)
m = gets.to_i
p, x = m.times.map { gets.split.map(&:to_i) }.transpose

sum = t.inject(:+)
p.each_with_index do |pi, i|
  puts sum - t[pi - 1] + x[i]
end
