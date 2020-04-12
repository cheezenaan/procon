# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp }

puts "#" * (w + 2)
a.each { |v| puts "##{v}#" }
puts "#" * (w + 2)
