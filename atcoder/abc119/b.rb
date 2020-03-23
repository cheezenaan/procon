# frozen_string_literal: true

n = gets.to_i

RATE = 380_000
ans = n.times.inject(0) do |r|
  x, u = gets.split

  r + (u == 'BTC' ? x.to_f * RATE : x.to_f)
end

puts ans
