n = gets.to_i
as = gets.split.map(&:to_i)

count = Hash.new(0)
ans = 0

n.times do |i|
  count[i + as[i]] += 1
  ans += count[i - as[i]]
end

puts ans
