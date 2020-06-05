n, k = gets.split.map(&:to_i)

puts ((n - k) / (k - 1.0)).ceil + 1
