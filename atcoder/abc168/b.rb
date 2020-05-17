k = gets.to_i
s = gets.chomp
l = s.length

if l <= k
  puts s
else
  puts [s[0..k - 1], "..."].join
end
