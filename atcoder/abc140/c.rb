# frozen_string_literal: true

def cin
  gets.split.map(&:to_i)
end

n = gets.to_i
b = cin

arr = []
arr << b.first

(n - 2).times do |i|
  arr << (b[i] < b[i + 1] ? b[i] : b[i + 1])
end
arr << b.last

puts arr.inject(:+)
