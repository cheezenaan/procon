# frozen_string_literal: true

n = gets.to_i
a = [0, *gets.split.map(&:to_i), 0]

sum = (0..n).inject(0) do |r, i|
  r + (a[i + 1] - a[i]).abs
end

(1..n).each do |i|
  d1 = (a[i] - a[i - 1]).abs + (a[i + 1] - a[i]).abs
  d2 = (a[i + 1] - a[i - 1]).abs

  puts sum - d1 + d2
end
