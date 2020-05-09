s = gets.chomp.chars

(s.length - 1).downto(2) do |i|
  next if i.odd?

  l = s[0..(i / 2) - 1]
  r = s[(i / 2)..i - 1]

  if l == r
    puts i
    break
  end
end
