n = gets.to_i

atoz = ("a".."z").to_a
ans = []

while n > 0
  d = n % 26 == 0 ? 26 : n % 26
  n = (n - 1) / 26
  ans << atoz[d - 1]
end

puts ans.reverse.join
