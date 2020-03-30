# frozen_string_literal: true

n, x = gets.split.map(&:to_i)
xs = [*gets.split.map(&:to_i), x].sort!

ds = Array.new(n, 0)
n.times do |i|
  ds[i] = xs[i + 1] - xs[i]
end

ans = ds[0]

ds.each do |d|
  ans = ans.gcd(d)
end

puts ans
