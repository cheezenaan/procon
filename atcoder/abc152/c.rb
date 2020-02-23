# frozen_string_literal: true

N = gets.chomp
P = gets.split.map(&:to_i)

count = 0
min = P[0]

0.upto(P.size - 1) do |i|
  if P[i] <= min
    min = P[i]
    count += 1
  end
end

puts count
