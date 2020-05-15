n, t = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)

ans = t

(n - 1).times do |i|
  diff = ts[i + 1] - ts[i]
  ans += diff < t ? diff : t
end

puts ans
