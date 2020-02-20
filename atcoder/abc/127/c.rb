# frozen_string_literal: true

N, M = gets.split.map(&:to_i)
LR = M.times.map { gets.split.map(&:to_i) }.map { |a, b| (a..b).to_a }

cards = LR[0]
1.upto(M - 1) do |i|
  cards &= LR[i]
end

puts cards.count
