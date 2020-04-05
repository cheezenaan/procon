# frozen_string_literal: true

n, k = gets.split.map(&:to_i)

a = n % k
b = (k - n) % k # = (k - (n % k)) % k, (n % k) % k = n

puts a <= b ? a : b
