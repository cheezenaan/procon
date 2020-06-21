a, b = gets.split
a = a.to_i
b = (b.to_f * 100).round

puts (a * b / 100).floor
