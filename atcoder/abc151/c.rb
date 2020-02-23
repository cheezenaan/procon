# frozen_string_literal: true

def cin
  gets.split.map(&:to_i)
end

N, M = cin

ac = pena = 0
misses = Array.new(N + 1, 0)

M.times do
  p, s = gets.split
  p = p.to_i

  next if misses[p] == -1

  if s == 'WA'
    misses[p] += 1
  elsif s == 'AC'
    ac += 1
    pena += misses[p]
    misses[p] = -1
  end
end

puts "#{ac} #{pena}"
