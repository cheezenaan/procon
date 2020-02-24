# frozen_string_literal: true

n = gets.to_i

ans = 'No'

1.upto(9) do |i|
  1.upto(9) do |j|
    ans = 'Yes' if i * j == n
  end
end

puts ans
