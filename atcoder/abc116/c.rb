n = gets.to_i
hs = gets.split.map(&:to_i)

ans = hs[0]

(n - 1).times do |i|
  l = hs[i]
  r = hs[i + 1]

  ans += hs[i + 1] - (l <= r ? l : r)
end

puts ans
