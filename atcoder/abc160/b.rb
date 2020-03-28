# frozen_string_literal: true

x = gets.to_i

a = x / 500
puts a * 1000 + ((x - 500 * a) / 5) * 5
