# frozen_string_literal: true

n = gets.to_i

if n.even?
  puts 1 / 2.0
else
  puts (n + 1) / (n * 2.0)
end
