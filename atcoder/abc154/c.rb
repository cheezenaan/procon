# frozen_string_literal: true

_N = gets.chomp
as = gets.split(" ").map(&:to_i)
puts as.uniq == as ? "YES" : "NO"
