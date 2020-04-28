h, _ = gets.split.map(&:to_i)

h.times do
  c = gets.chomp
  2.times { puts c }
end
