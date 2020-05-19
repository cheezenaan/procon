s = gets.chomp
k = "keyence"
l = s.length - k.length

ans = "NO"

8.times do |i|
  if s[0..i] == k[0..i] && s[i + 1 + l..-1] == k[i + 1..-1]
    ans = "YES"
    break
  end
end

puts ans
