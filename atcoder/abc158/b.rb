# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)

sets = n / (a + b)
frac = n % (a + b)

if frac >= a
  puts a * sets + a
else
  puts a * sets + frac
end
