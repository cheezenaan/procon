x = gets.to_i

ans = 0
ans += 1 until ans * (ans + 1) / 2 >= x

puts ans
