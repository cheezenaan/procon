n, a, b = gets.split.map(&:to_i)

if a > b || (n == 1 && a != b)
  puts 0
else
  puts (n - 2) * (b - a) + 1
end
