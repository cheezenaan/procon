n, m, x = gets.split.map(&:to_i)
cas = n.times.map { gets.split.map(&:to_i) }

ans = -1

(1 << n).times do |bit|
  sums = Array.new(m + 1, 0)

  n.times do |i|
    (m + 1).times do |j|
      sums[j] += cas[i][j] * bit[i]
    end
  end

  if sums[1..-1].all? { |a| a >= x }
    if ans == -1
      ans = sums[0]
    elsif sums[0] <= ans
      ans = sums[0]
    end
  end
end

puts ans
