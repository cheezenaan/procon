n = gets

puts n.each_char.any? { |i| i == "7" } ? "Yes" : "No"
