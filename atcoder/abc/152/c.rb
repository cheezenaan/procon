# frozen_string_literal: true

N = gets.chomp
Ps = gets.split.map(&:to_i)

count = 0
Ps.each.with_index(1) do |n, i|
  count += 1 if 1.upto(i).all? { |j| n <= Ps[j - 1] }
end

puts count
