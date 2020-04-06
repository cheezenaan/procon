# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

n = b - a
puts (n * (n + 1) / 2) - b
