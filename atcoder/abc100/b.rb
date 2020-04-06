# frozen_string_literal: true

d, n = gets.split.map(&:to_i)

puts 100**d * [*1..99, 101][n - 1]
