# frozen_string_literal: true

a = 3.times.map { gets.split.map(&:to_i) }
n = gets.to_i
b = n.times.map { gets.to_i }

hitted = Array.new(3) { Array.new(3, false) }
3.times do |i|
  3.times do |j|
    hitted[i][j] = true if b.any? { |n| n == a[i][j] }
  end
end

transposed = hitted.transpose
ans = "No"

3.times do |i|
  ans = "Yes" if hitted[i].all? || transposed[i].all?
end

if [hitted[0][0], hitted[1][1], hitted[2][2]].all? || [hitted[0][2], hitted[1][1], hitted[2][0]].all?
  ans = "Yes"
end

puts ans
