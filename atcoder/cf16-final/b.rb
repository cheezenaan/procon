n = gets.to_i

ans = []
sum = 0

1.upto(n) do |i|
  ans << i
  sum = (i + 1) * i / 2

  break if sum >= n
end

puts ans.reject { |a| a == sum - n }
