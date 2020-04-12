# frozen_string_literal: true

n = gets.to_i
ans = 1

0.upto(6) do |i|
  ans = 2 ** i if 2 ** i <= n
end

puts ans
