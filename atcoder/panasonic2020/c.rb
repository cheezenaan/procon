# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)
d = c - b - a

if d > 0 && 4 * a * b < d ** 2
  puts "Yes"
else
  puts "No"
end
