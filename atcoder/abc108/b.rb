# frozen_string_literal: true

x1, y1, x2, y2 = gets.split.map(&:to_i)

a = x2 - x1
b = y2 - y1

puts "#{x2 - b} #{y2 + a} #{x1 - b} #{y1 + a}"
