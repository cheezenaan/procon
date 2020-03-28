# frozen_string_literal: true

n = gets.to_i
as = n.times.map { gets.to_i }

largest, second_largest = as.max(2)

as.each do |a|
  puts a < largest ? largest : second_largest
end
