# frozen_string_literal: true

n = gets.to_i
ps = n.times.map { gets.to_i }

puts ps.inject(:+) - ps.max / 2
