# frozen_string_literal: true

n = gets.to_i

POSSIBLES = [111, 222, 333, 444, 555, 666, 777, 888, 999].freeze

diff = 999 - n
ans = nil

POSSIBLES.each do |p|
  d = p - n

  if d >= 0 && d <= diff
    ans = p
    diff = d
  end
end

puts ans
