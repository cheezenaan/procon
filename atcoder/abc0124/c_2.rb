s = gets.chomp

ans_a = ans_b = 0

s.length.times do |i|
  c = s[i].to_i
  ans_a += 1 if i.even? && c == 0 || i.odd? && c == 1
  ans_b += 1 if i.even? && c == 1 || i.odd? && c == 0
end

puts ans_a <= ans_b ? ans_a : ans_b
