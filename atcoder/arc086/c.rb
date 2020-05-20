n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

counts = as.each.with_object(Array.new(n + 1, 0)) do |a, h|
  h[a] += 1
end.sort!

ans = 0
until counts.size <= k
  ans += counts.shift
end

puts ans
