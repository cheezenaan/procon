# frozen_string_literal: true

k, x = gets.split.map(&:to_i)

MIN = -1_000_000
MAX = 1_000_000

head = x - (k - 1)
tail = x + (k - 1)

if head <= MIN
  puts (MIN..tail).to_a.join(' ')
elsif tail >= MAX
  puts (head..MAX).to_a.join(' ')
else
  puts (head..tail).to_a.join(' ')
end
