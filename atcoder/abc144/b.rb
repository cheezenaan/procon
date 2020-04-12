# frozen_string_literal: true

n = gets.to_i

ans = "No"
range = (1..9)

range.each do |i|
  div, mod = n.divmod(i)
  ans = "Yes" if range.include?(div) && mod.zero?
end

puts ans
