h, w = gets.split.map(&:to_i)
ss = h.times.map { gets.chomp }

h.times do |i|
  ans = Array.new(w, 0)

  w.times do |j|
    if ss[i][j] == "#"
      ans[j] = ss[i][j]
      next
    end

    l = j - 1 < 0 ? j : j - 1
    r = j + 1 > w ? j : j + 1

    if i - 1 >= 0
      ans[j] += ss[i - 1][l..r].count("#")
    end

    ans[j] += ss[i][l..r].count("#")

    if i + 1 <= h - 1
      ans[j] += ss[i + 1][l..r].count("#")
    end
  end

  puts ans.join
end
