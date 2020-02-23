# frozen_string_literal: true

def cin
  gets.split.map(&:to_i)
end

n = gets.to_i
a = cin.sort!.reverse!

ans = 0
n.times do |i|
  ans += a[i * 2 + 1]
end
puts ans
