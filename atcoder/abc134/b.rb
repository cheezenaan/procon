# frozen_string_literal: true

n, d = gets.split.map(&:to_f)

puts (n / ((d * 2) + 1)).ceil
