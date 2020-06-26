n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp

ans = n.lcm(m)
g = n.gcd(m)

g.times do |i|
  l = s[i * n / g]
  r = t[i * m / g]
  next if l == r

  ans = -1
  break
end

puts ans
