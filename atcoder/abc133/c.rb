# frozen_string_literal: true

l, r = gets.split.map(&:to_i)

ans = 2018
zero_divided = false

l.upto(r - 1) do |i|
  if zero_divided
    ans = 0
    break
  end

  (i + 1).upto(r) do |j|
    p = i * j % 2019

    if p == 0
      zero_divided = true
      break
    end

    ans = p if p <= ans
  end
end

puts ans
