n, m, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

to_0 = as.count { |a| 0 < a && a < x }
to_n = as.count { |a| x < a && a < n }

puts to_0 <= to_n ? to_0 : to_n
