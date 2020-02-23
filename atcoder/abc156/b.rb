# frozen_string_literal: true

n, k = gets.split.map(&:to_i)

count = 0
while n > 0
  n /= k
  count += 1
end

puts count
