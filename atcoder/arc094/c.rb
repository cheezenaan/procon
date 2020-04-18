a, b, c = gets.split.map(&:to_i).sort!
a, b = c - a, c - b

diva, a = a.divmod(2)
divb, b = b.divmod(2)
ans = diva + divb

if a + b == 2
  ans += 1
elsif a + b == 1
  ans += 2
end

puts ans
