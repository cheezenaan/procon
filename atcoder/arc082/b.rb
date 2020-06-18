n = gets.to_i
ps = [0, *gets.split.map(&:to_i)]

v = ps.each_with_index.with_object(Array.new(n + 1, 1)) do |(p, i), arr|
  arr[p] = 0 if p == i
end[1..-1]

ans = 0
n.times do |i|
  next if v[i] == 1

  v[i + 1] = 1
  ans += 1
end

puts ans
