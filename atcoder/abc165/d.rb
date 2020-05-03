a, b, n = gets.split.map(&:to_i)

x = (b - 1) <= n ? b - 1 : n
puts (a * x / b).floor
