# frozen_string_literal: true

n = gets.to_i

a = (n / 1.08).ceil
puts (a * 1.08).floor == n ? a : ':('
