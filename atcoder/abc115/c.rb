n, k = gets.split.map(&:to_i)
hs = n.times.map { gets.to_i }.sort!

ans = (10 ** 9) - 1
(n - k + 1).times do |i|
  diff = hs[i + k - 1] - hs[i]
  ans = diff if diff <= ans
end

puts ans
