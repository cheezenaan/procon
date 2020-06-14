x, n = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i).sort!

if n == 0
  puts x
  exit 0
end

ans = diff = x

(ps.last + 10 ** 5).downto(-ps.last - 10 ** 5) do |i|
  next if ps.include?(i)

  abs = (x - i).abs
  if abs <= diff
    ans = i
    diff = abs
  end
end

puts ans
