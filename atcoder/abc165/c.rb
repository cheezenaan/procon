n, m, q = gets.split.map(&:to_i)
abcds = q.times.map { gets.split.map(&:to_i) }

ans = 0
[*1..m].repeated_combination(n).each do |arr|
  sum = abcds.inject(0) do |r, (a, b, c, d)|
    r + (arr[b - 1] - arr[a - 1] == c ? d : 0)
  end

  ans = sum if sum >= ans
end

puts ans
