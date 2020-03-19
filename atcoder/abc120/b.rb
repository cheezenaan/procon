# frozen_string_literal: true

a, b, k = gets.split.map(&:to_i)

divisors = 1.upto([a, b].min).each_with_object([]) do |n, arr|
  arr.unshift(n) if a % n == 0 && b % n == 0
end

puts divisors[k - 1]
