s = gets.chomp

w_count = s.count("W")
ans = b_count = 0

s.each_char.with_index do |c, i|
  next if c == "W"

  ans += (w_count + b_count) - i
  b_count += 1
end

puts ans
