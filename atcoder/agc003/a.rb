s = gets.chomp

N = s.count("N")
W = s.count("W")
S = s.count("S")
E = s.count("E")

if (N + S >= 1 && N * S == 0) || (W + E >= 1 && W * E == 0)
  puts "No"
else
  puts "Yes"
end
