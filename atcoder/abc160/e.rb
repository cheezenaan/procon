# frozen_string_literal: true

x, y, a, b, c = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i).max(x)
qs = gets.split.map(&:to_i).max(y)
rs = gets.split.map(&:to_i).sort!.reverse!

pqs = [*ps, *qs].sort!
ans = pqs.inject(:+)

[pqs.count, rs.count].min.times do |i|
  ans += rs[i] - pqs[i] if rs[i] >= pqs[i]
end
puts ans
