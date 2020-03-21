# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

min = (a / 0.08).floor
max = (100 / 0.08).floor

p = min

min.upto(max) do
  break if (p * 0.08).floor == a && (p * 0.10).floor == b

  p += 1
end

puts p > max ? -1 : p
