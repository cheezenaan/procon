# frozen_string_literal: true

n = gets.to_i
a = [0, *gets.split.map(&:to_i), 0] # a[0] = a[n] = 0 とおいてよいはず

costs = Array.new(a.size, 0)
1.upto(a.size - 1) do |i|
  costs[i] = (a[i - 1] - a[i]).abs
end
sum = costs.inject(:+)

(1..n).each do |i|
  d1 = costs[i..i + 1]
  d2 = (a[i + 1] - a[i - 1]).abs

  puts sum - d1.inject(:+) + d2
end
