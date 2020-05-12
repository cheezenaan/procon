n, m = gets.split.map(&:to_i)
abs = n.times.map { gets.split.map(&:to_i) }
checks = m.times.map { gets.split.map(&:to_i) }

abs.each do |a, b|
  ans = m
  adist = 2 + 10 ** 8

  (m - 1).downto(0) do |i|
    ca, cb = checks[i]
    dist = (ca - a).abs + (cb - b).abs

    if dist <= adist
      ans = i + 1
      adist = dist
    end
  end

  puts ans
end
