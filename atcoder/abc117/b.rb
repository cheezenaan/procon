# frozen_string_literal: true

n = gets.to_i
l = gets.split.map(&:to_i)

sum = l.inject(:+)
lmax = l.max

puts lmax < (sum - lmax) ? "Yes" : "No"
