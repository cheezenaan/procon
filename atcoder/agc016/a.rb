s = gets.chomp.chars

ans = s.size - 1

("a".."z").each do |c|
  count = 0
  t = s.dup

  until t.uniq.size == 1
    (t.size - 1).times do |i|
      t[i] = [t[i], t[i + 1]].include?(c) ? c : t[i]
    end

    count += 1
    t.pop
  end

  ans = count if count <= ans
end

puts ans
