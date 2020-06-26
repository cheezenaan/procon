n = gets.to_i
abcde = 5.times.map { gets.to_i }

puts ((n - 1) / abcde.min) + 5
