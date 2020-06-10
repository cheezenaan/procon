s = gets.chomp

floors = s.size
ans = floors * (floors - 1)

s.each_char.with_index(1) do |button, i|
  to_lower = i - 1
  to_upper = floors - i

  ans += button == "U" ? to_lower : to_upper
end

puts ans
