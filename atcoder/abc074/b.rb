# frozen_string_literal: true

n = gets.to_i
k = gets.to_i
xs = gets.split.map(&:to_i)

ans = xs.inject(0) do |r, x|
  r + (k - x <= x ? k - x : x) * 2
end

puts ans
