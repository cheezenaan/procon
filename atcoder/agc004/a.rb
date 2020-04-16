a, b, c = gets.split.map(&:to_i)

if [a, b, c].any?(&:even?)
  puts 0
else
  puts [a * b, b * c, c * a].min
end
