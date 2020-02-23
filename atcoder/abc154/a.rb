# frozen_string_literal: true

s, t = gets.split
a, b = gets.chomp.split(' ').map(&:to_i)

u = gets.chomp

print u == s ? "#{a - 1} #{b}" : "#{a} #{b - 1}"
