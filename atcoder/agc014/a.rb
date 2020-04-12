# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

ans = 0

while [a, b, c].all?(&:even?)
  if a == b && b == c
    ans = "-1"
    break
  end
  a, b, c = [(b + c) / 2, (c + a) / 2, (a + b) / 2]

  ans += 1
end

puts ans
