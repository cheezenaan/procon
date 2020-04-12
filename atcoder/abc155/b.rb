# frozen_string_literal: true

N = gets.chomp
a = gets.split.map(&:to_i)

puts a.select(&:even?).all? { |n| n % 5 == 0 || n % 3 == 0 } ? "APPROVED" : "DENIED"
