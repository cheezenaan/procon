n = gets.to_i
s = gets.chomp
t = gets.chomp

l = 0
0.upto(n - 1) do |i|
  l = i + 1 if s[(n - i) - 1..-1] == t[0..i]
end

puts s.length + s.length - l
