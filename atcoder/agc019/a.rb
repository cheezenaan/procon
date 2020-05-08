q, h, s, d = gets.split.map(&:to_i)
n = gets.to_i

h = [2 * q, h].min
s = [2 * h, s].min
d = [2 * s, d].min

puts d * (n / 2) + s * (n % 2)
