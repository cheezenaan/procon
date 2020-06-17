n = gets.to_i
counts = n.times.with_object(Hash.new(0)) do |_, h|
  s = gets.chomp[0]
  h[s] += 1
end

ans = %w(M A R C H).combination(3).inject(0) do |r, (a, b, c)|
  r + counts[a] * counts[b] * counts[c]
end

puts ans
