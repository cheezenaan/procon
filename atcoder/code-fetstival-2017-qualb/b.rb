gets
ds = gets.split.map(&:to_i).each_with_object(Hash.new(0)) do |c, h|
  h[c] += 1
end

gets
ts = gets.split.map(&:to_i).each_with_object(Hash.new(0)) do |t, h|
  h[t] += 1
end

puts ts.keys.all? { |t| ts[t] <= ds[t] } ? "YES" : "NO"
