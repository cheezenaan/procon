# frozen_string_literal: true

a, b, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = as.min + bs.min

m.times do
  x, y, c = gets.split.map(&:to_i)
  d = as[x - 1] + bs[y - 1] - c

  ans = d if d <= ans
end

puts ans
