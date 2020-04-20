n = gets.to_i
as = gets.split.map(&:to_i)

ss = Array.new(n + 1, 0)
min = 2020202020
total = as.inject(:+)

as.each_with_index do |a, i|
  sl = ss[i + 1] = ss[i] + a
  sr = total - sl

  min = (sl - sr).abs if (sl - sr).abs <= min
end

puts min
