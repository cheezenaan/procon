n = gets.to_i
as = gets.split.map(&:to_i)

ans = 1
if n == 1 || as[0] == as[1]
  increased = 0
else
  increased = as[0] < as[1] ? 1 : -1
end

1.upto(n - 1) do |i|
  l = as[i - 1]
  r = as[i]
  next if l == r

  if increased == 0
    increased = l < r ? 1 : -1
    next
  end

  if (r - l) * increased < 0
    ans += 1
    increased = 0
  end
end

puts ans
