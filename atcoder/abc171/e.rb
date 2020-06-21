n = gets.to_i
as = gets.split.map(&:to_i)

total = 0
as.each do |a|
  total ^= a
end

puts as.map { |a| total ^ a }.join(" ")
