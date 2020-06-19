n = gets.to_i
as = gets.split.map(&:to_i)
counts = as.each_with_object(Hash.new(0)) do |a, h|
  h[a] += 1
end

ans = counts.inject(0) do |r, (n, c)|
  r += n > c ? c : (c - n)
end

puts ans
