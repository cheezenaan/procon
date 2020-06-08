n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i).sort!

dists = (m - 1).times.with_object(Array.new(m - 1, 0)) do |i, a|
  a[i] = xs[i + 1] - xs[i]
end.max(n - 1)

puts xs.last - xs.first - (dists.inject(:+) || 0)
