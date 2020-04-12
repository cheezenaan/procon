# frozen_string_literal: true

require "prime"

def divisors(num)
  num.prime_division.inject([1]) do |arr, (p, e)|
    (0..e).map { |e1| p ** e1 }.product(arr).map { |a, b| a * b }
  end.sort
end

n = gets.to_i
d = divisors(n)

ans = (n - 1)
((d.length + 1) / 2).times do |i|
  xdiff = (d[i] - 1)
  ydiff = (d[-1 * (i + 1)] - 1)

  ans = xdiff + ydiff if xdiff + ydiff <= ans
end

puts ans
