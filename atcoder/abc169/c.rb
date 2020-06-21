a, b = gets.split.map(&:to_f)
a = a.to_i
b = (100 * b).round

puts (a * b / 100).floor
