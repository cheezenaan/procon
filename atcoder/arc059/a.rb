n = gets.to_i
as = gets.split.map(&:to_i).sort!

ans = 100 * (200) ** 2
-100.upto(100) do |i|
  sum = as.inject(0) { |r, a| (r + (i - a) ** 2) }
  ans = sum if sum <= ans
end

puts ans
