n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i).sort

puts ps.take(k).inject(:+)
