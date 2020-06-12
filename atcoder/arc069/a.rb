n, m = gets.split.map(&:to_i)

ans = [m / 2, n].min
ans += (m - ans * 2) / 4

puts ans
