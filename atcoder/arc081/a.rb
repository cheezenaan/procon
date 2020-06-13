n = gets.to_i
as = gets.split
  .each_with_object(Hash.new(0)) { |a, h| h[a.to_i] += 1 }
  .select { |_, v| v >= 2 }

ans = 0
prev = 0

as.keys.sort.each do |k|
  v = as[k]
  s = prev * k
  s = [s, k ** 2].max if v >= 4

  ans = s if s > ans
  prev = k
end

puts ans
