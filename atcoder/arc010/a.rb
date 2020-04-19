n, m, a, b = gets.split.map(&:to_i)

completed = true
day = 0

m.times do |i|
  c = gets.to_i
  n += b if n <= a

  if n < c
    day = i
    completed = false
    break
  end

  n -= c
end

puts completed ? "complete" : day + 1
