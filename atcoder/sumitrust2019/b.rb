# frozen_string_literal: true

n = gets.to_i

MAX = 50_000
ans = ':('

1.upto(MAX) do |x|
  if n == (x * 1.08).floor
    ans = x
    break
  end
end

puts ans
