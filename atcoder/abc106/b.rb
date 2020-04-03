# frozen_string_literal: true

def divisors_of(num)
  divisors = []

  1.upto(Math.sqrt(num)) do |i|
    next unless num % i == 0

    divisors << i
    divisors << num / i
  end

  divisors
end

n = gets.to_i

ans = 0
1.step(n, 2) do |i|
  ans += 1 if divisors_of(i).length == 8
end

puts ans
