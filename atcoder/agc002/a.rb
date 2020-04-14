a, b = gets.split.map(&:to_i)

if a > 0
  puts "Positive"
elsif b < 0
  puts (b - a + 1) % 2 == 0 ? "Positive" : "Negative"
elsif (a * b) <= 0
  puts "Zero"
end
