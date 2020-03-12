# frozen_string_literal: true

n = gets.to_i
a = Math.sqrt(n).ceil

a -= 1 until n % a == 0
b = n / a

puts a + b - 2
