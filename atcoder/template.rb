n = gets.to_i
s = gets.chomp

x = gets.split.map(&:to_i)
a, b = gets.split.map(&:to_i)

k = n.times.map { gets.to_i }
l, m = n.times.map { gets.split.map(&:to_i) }.transpose
