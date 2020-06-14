x, y = gets.split.map(&:to_i)

ans = "No"
0.upto(100) do |a|
  0.upto(100) do |b|
    if 2 * a + 4 * b == y && a + b == x
      ans = "Yes"
      break
    end
  end
end

puts ans
