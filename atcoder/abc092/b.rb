# frozen_string_literal: true

n = gets.to_i
d, x = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }

sum = a.inject(0) do |r, v|
  r + 1 + (d - 1) / v
end

puts sum + x
