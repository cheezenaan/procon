def to_radian(degree)
  degree * Math::PI / 180
end

a, b, h, m = gets.split.map(&:to_i)

l = 360.0 * (h * 60 + m) / 720
s = 360.0 * m / 60
d = l - s

puts Math.sqrt(a ** 2 + b ** 2 - 2 * a * b * Math.cos(to_radian(d)))
