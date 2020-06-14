xx = gets.split.map(&:to_i)

puts xx.find_index { |x| x == 0 } + 1
