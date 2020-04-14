a, b = gets.split.map(&:to_i)

if (a * b) <= 0
  puts "Zero"
elsif a > 0
  puts "Positive"
elsif b < 0
  puts (b - a).odd? ? "Positive" : "Negative"
end
