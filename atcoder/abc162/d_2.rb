n = gets.to_i
ss = gets.chomp.chars
ans = ss.count("R") * ss.count("G") * ss.count("B")

0.upto(n) do |i|
  1.upto(n / 2) do |d|
    j = i + d
    k = i + d * 2
    next unless k < n

    a = ss[i]
    b = ss[j]
    c = ss[k]
    ans -= 1 if a != b && b != c && c != a
  end
end

puts ans
