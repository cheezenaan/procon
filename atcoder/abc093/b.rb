a, b, k = gets.split.map(&:to_i)

ans = k.times.with_object([]) do |i, arr|
  arr << a + i if a + i <= b
  arr << b - i if b - i >= a + k
end

puts ans.sort!
