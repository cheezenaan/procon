n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0

as.each.with_index(1) do |a, i|
  next if as[a - 1] > a
  ans += 1 if as[a - 1] == i
end

puts ans
