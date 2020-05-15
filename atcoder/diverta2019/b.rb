r, g, b, n = gets.split.map(&:to_i)
r, g, b = [r, g, b].sort!

ans = 0

0.upto(n / r) do |x|
  balls = r * x

  next if balls > n
  if balls == n
    ans += 1
    next
  end

  0.upto((n - (r * x)) / g) do |y|
    balls = r * x + g * y

    next if balls > n
    if balls == n
      ans += 1
      next
    end

    rest = n - balls
    ans += 1 if rest % b == 0
  end
end

puts ans
