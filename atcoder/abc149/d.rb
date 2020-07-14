n, k = gets.split.map(&:to_i)
r, s, p = gets.split.map(&:to_i)
t = gets.chomp

ans = 0
t.each_char.with_index do |c, i|
  if i >= k && c == t[i - k]
    t[i] = "x"
    next
  end

  score = [p, s, r][%w(r p s).find_index(c)]
  ans += score
end

puts ans
