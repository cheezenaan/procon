n = gets.to_i
atoz = ("a".."z")
ans = atoz.each_with_object({}) { |c, h| h[c] = 50 }

n.times do
  s = gets.chomp
  ans.each do |c, v|
    count = s.count(c)
    ans[c] = count if count <= v
  end
end

puts ans.map { |c, v| c * v }.join
