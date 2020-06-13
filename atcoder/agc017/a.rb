n, p = gets.split.map(&:to_i)
as = gets.split.map { |i| i.to_i % 2 }

if as.count(1) == 0
  puts p == 0 ? 2 ** n : 0
else
  puts 2 ** (n - 1)
end
