k, a, b = gets.split.map(&:to_i)

if (b - 1) < (a + 1)
  puts k + 1
else
  puts b + (b - a) * ((k - a - 1) / 2) + (k - a - 1) % 2
end
