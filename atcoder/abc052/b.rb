n = gets.to_i
s = gets.chomp

ans = x = 0

s.each_char do |c|
  case c
  when "I"
    x += 1
  when "D"
    x -= 1
  end

  ans = x if x >= ans
end

puts ans
