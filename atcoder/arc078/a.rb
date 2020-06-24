n = gets.to_i
as = gets.split.map(&:to_i)

x = as.first
y = as.inject(:+) - x
ans = (x - y).abs

as[1..n - 2].each do |a|
  x += a
  y -= a
  diff = (x - y).abs

  ans = diff if diff <= ans
end

puts ans
