n, m = gets.split.map(&:to_i)
abs = n.times.map { gets.split.map(&:to_i) }.sort_by { |a, b| a }

ans = 0

abs.each do |a, b|
  if b >= m
    ans += a * m
    break
  end

  ans += a * b
  m -= b
end

puts ans
