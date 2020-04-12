n = gets.to_i
ss = gets.chomp

ans = 0

(n - 2).times do |i|
  a = ss[i]

  (i + 1).upto(n - 1) do |j|
    b = ss[j]
    next if a == b

    (j + 1).upto(n - 1) do |k|
      c = ss[k]
      next if b == c || c == a || j - i == k - j
      ans += 1
    end
  end
end

puts ans
