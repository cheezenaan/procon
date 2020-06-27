s = gets.chomp
t = gets.chomp
l = s.length

ans = 0
l.times do |i|
  ans += 1 if s[i] != t[i]
end

puts ans
