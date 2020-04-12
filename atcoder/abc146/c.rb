# frozen_string_literal: true

def buyable?(n, a, b, x)
  a * n + b * n.to_s.length <= x
end

a, b, x = gets.split.map(&:to_i)
n_max = 10 ** 9

if buyable?(n_max, a, b, x)
  puts n_max
else
  puts (1..x).bsearch { |n| !buyable?(n, a, b, x) } - 1
end
