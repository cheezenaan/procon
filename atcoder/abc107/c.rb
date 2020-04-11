# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

ans = (n - k + 1).times.map do |i|
  xl = xs[i]
  xr = xs[i + k - 1]

  lr = xl.abs + (xr - xl).abs
  rl = xr.abs + (xl - xr).abs

  lr <= rl ? lr : rl
end.min

puts ans
