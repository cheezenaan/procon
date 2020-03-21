# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

l = (a / 0.08).floor
r = (100 / 0.08).floor

ans = l.upto(r).select do |n|
  (n * 0.08).floor == a && (n * 0.10).floor == b
end.min

puts ans || -1
