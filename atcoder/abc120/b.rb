# frozen_string_literal: true

a, b, k = gets.split.map(&:to_i)

divisors = 1.upto([a, b].min).select do |n|
  a % n == 0 && b % n == 0
end

puts divisors[-k]
