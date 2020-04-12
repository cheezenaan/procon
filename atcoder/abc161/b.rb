# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

sum = as.inject(:+)
puts as.max(m).all? { |a| a * (4 * m) >= sum } ? "Yes" : "No"
