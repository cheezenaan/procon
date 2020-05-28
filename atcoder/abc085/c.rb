n, y = gets.split.map(&:to_i)

a = b = c = -1
valid = false

n.downto(0) do |i|
  break if valid

  (n - i).downto(0) do |j|
    k = n - (i + j)
    valid = 10_000 * i + 5_000 * j + 1_000 * k == y

    if valid
      a, b, c = [i, j, k]
      break
    end
  end
end

puts [a, b, c].join(" ")
