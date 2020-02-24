# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

puts h.count { |v| v >= k }
