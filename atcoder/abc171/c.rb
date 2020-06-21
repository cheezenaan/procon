n = gets.to_i

arr = []
while n > 0
  arr << (n % 26 == 0 ? 26 : n % 26)
  n = (n - 1) / 26
end
arr.reverse!

ans = ("a".."z").to_a
puts arr.map { |s| s == 0 ? "a" : ans[s - 1] }.join
