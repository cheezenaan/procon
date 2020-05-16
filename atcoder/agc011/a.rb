n, c, k = gets.split.map(&:to_i)
ts = n.times.map { gets.to_i }.sort!.reverse!

ans = 1
base = ts.first
passengers = 1

1.upto(n - 1) do |i|
  if ts[i] + k < base || passengers == c
    ans += 1
    base = ts[i]
    passengers = 0
  end

  passengers += 1
end

puts ans
