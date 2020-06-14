n = gets.to_i
as = gets.split.map(&:to_i).sort!

nums = as.each_with_object(Hash.new(0)) { |a, h| h[a] += 1 }
divisible = Array.new(as.last + 1, 1)
res = 0

as.each do |a|
  next if divisible[a] == 0
  res += 1 if nums[a] == 1

  a.step(as.last, a) do |i|
    divisible[i] = 0
  end
end

puts res
