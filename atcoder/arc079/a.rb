n, m = gets.split.map(&:to_i)
firsts = []
lasts = []
m.times.map do
  a, b = gets.split.map(&:to_i)
  firsts << b if a == 1
  lasts << a if b == n
end

puts (firsts & lasts).empty? ? "IMPOSSIBLE" : "POSSIBLE"
