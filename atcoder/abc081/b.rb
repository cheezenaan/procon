n = gets.to_i
as = gets.split.map(&:to_i)

ans = 10 ** 18

as.each do |a|
  count = 0
  while a.even?
    count += 1
    a /= 2
  end

  ans = count if count <= ans
end

puts ans
