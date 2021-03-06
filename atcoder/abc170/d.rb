n = gets.to_i
as = gets.split.map(&:to_i).sort!

counts = Hash.new(0)
ans = Array.new(as.last + 1, 0)

as.each do |a|
  counts[a] += 1
  ans[a] = 1
end

as.each do |a|
  next if ans[a] == 0
  ans[a] = 0 if counts[a] > 1

  (a * 2).step(as.last, a) do |i|
    ans[i] = 0
  end
end

puts ans.count(1)
