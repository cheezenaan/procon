n = gets.to_i
as = gets.split.map(&:to_i)

puts 3 ** n - 2 ** as.count(&:even?)
