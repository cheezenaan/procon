n = gets.to_i
ss = gets.chomp.chars
ans = ss.count("R") * ss.count("G") * ss.count("B")

0.upto(n) do |i|
  j = 1

  while i + 2 * j < n
    k = i + 2 * j

    a = ss[i]
    b = ss[i + j]
    c = ss[k]
    ans -= 1 if a != b && b != c && c != a

    j += 1
  end
end

puts ans
