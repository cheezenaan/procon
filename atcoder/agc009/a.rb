n = gets.to_i
abs = n.times.map { gets.split.map(&:to_i) }.reverse!

ans = 0
abs.each do |a, b|
  a += ans
  next if a % b == 0

  diff = b - a % b
  ans += diff
end

puts ans
