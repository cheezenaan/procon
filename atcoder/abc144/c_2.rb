# frozen_string_literal: true

n = gets.to_i

ans = n
1.upto(Math.sqrt(n).ceil) do |i|
  diviable = n % i == 0
  a = n / i
  b = i

  ans = a + b - 2 if diviable && a + b - 2 <= ans
end

puts ans
