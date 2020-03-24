# frozen_string_literal: true

s = gets.to_i

appeared = false
count = 0
index = 0

while count < 2
  if [1, 2, 4].include?(s)
    appeared = s if appeared == false
    count += 1 if s == appeared
  end

  s = s.even? ? s / 2 : s * 3 + 1
  index += 1
end

puts index
