n, k = gets.split.map(&:to_i)

arr = [*1..n]

k.times do
  _ = gets.to_i
  a = gets.split.map(&:to_i)
  arr = arr - a
end

puts arr.size
