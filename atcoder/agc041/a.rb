n, a, b = gets.split.map(&:to_i)

diff = b - a

if diff.even?
  puts diff / 2
else
  puts [n - b, a - 1].min + 1 + (diff - 1) / 2
end
