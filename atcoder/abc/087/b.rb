# frozen_string_literal: true

a, b, c, x = 4.times.map { gets.to_i }

ans = 0
(0..a).each do |i|
  (0..b).each do |j|
    sum = 500 * i + 100 * j
    rest = x - sum
    ans += 1 if rest >= 0 && rest <= c * 50
  end
end

puts ans
