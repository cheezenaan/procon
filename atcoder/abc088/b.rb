# frozen_string_literal: true

n = gets.to_i
as = gets.split.map(&:to_i).sort!.reverse!

ans = as.each_with_index.inject(0) do |r, (a, i)|
  r + (i.even? ? a : -a)
end

puts ans
