n, k, s = gets.split.map(&:to_i)

puts (Array.new(k, s) << Array.new(n - k, (s < 10 ** 9 ? s + 1 : 1))).join(" ")
