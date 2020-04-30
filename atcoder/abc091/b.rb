n = gets.to_i
ss = n.times.map { gets.chomp }
m = gets.to_i
ts = m.times.map { gets.chomp }

words = [*ss, *ts].uniq

ans = 0

words.each do |w|
  c = ss.count(w) - ts.count(w)
  ans = c if c >= ans
end

puts ans
