# frozen_string_literal: true

N = gets.chomp
p = gets.split.map(&:to_i)

count = 0
min = p[0]

0.upto(p.size - 1) do |i|
  if p[i] <= min
    min = p[i]
    count += 1
  end
end

puts count
