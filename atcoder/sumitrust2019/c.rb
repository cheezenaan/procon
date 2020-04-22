x = gets.to_i

if 1.upto(x / 100).any? { |c| 100 * c <= x && x <= 105 * c }
  puts 1
else
  puts 0
end
