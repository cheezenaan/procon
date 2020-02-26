# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

ans = a.inject(0) { |r, an| r + 1.0 / an }
puts 1 / ans
