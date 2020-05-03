x = gets.to_i

d = 100
ans = 0

loop do
  ans += 1
  d += (d * 0.01).floor

  if d >= x
    puts ans
    break
  end
end
