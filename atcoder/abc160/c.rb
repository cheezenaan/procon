# frozen_string_literal: true

k, n = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

a1 = as.first
an = as.last
ans = 10 ** 6 - 1

dd = Array.new(n, 0)

(n - 1).times do |i|
  dd[i] = as[i + 1] - as[i]
end
dd[-1] = k - an + a1

sum = dd.inject(:+)

dd.each do |d|
  ans = sum - d if sum - d <= ans
end

puts ans
