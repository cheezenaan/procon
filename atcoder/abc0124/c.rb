s = gets.chomp.chars

evens, odds = s.partition.with_index { |c, i| i.even? }
ans_a = odds.count("0") + evens.count("1")
ans_b = odds.count("1") + evens.count("0")

puts ans_a <= ans_b ? ans_a : ans_b
