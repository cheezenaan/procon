n = gets.to_i

ans = 1.upto(n).inject(0) do |r, i|
  r + (i % 3 != 0 && i % 5 != 0 ? i : 0)
end
puts ans
