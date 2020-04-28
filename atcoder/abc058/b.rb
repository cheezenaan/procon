o = gets.chomp.chars
e = gets.chomp.chars

l = [o.length, e.length].max

ans = l.times.with_object([]) do |i, str|
  str << o[i] << e[i]
end

puts ans.join
