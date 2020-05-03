x, y = gets.split.map(&:to_i)

last = x * (y / x)
l = 0

loop do
  l += 1
  a = x * 2 ** l

  break if a > last
end

puts l
