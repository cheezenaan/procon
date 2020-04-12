# frozen_string_literal: true

n = gets.to_i
hs = gets.split.map(&:to_i)

ans = "Yes"
last = hs[0]

hs.each do |h|
  if last <= h
    last = h
    next
  end

  # last > h
  if last == h + 1
    last = h + 1
    next
  end

  ans = "No"
  break
end

puts ans
