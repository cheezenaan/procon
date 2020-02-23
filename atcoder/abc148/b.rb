# frozen_string_literal: true

N = gets.to_i
s, t = gets.split

ans = ''
N.times do |i|
  ans += s[i] + t[i]
end
puts ans
