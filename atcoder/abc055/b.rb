n = gets.to_i
m = 10 ** 9 + 7

puts 1.upto(n).inject(1) { |r, i| r = r * i % m }
