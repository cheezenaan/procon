n = gets.to_i
a_h = gets.split.map(&:to_i)
a_l = gets.split.map(&:to_i)

sum_h = Array.new(n + 1, 0)
sum_l = Array.new(n + 1, 0)

n.times do |i|
  sum_h[i + 1] = sum_h[i] + a_h[i]
  sum_l[i + 1] = sum_l[i] + a_l[i]
end

ans = 0

n.times do |i|
  c = sum_h[i + 1] + sum_l[n] - sum_l[i]
  ans = c if c >= ans
end

puts ans
