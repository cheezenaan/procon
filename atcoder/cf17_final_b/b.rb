s = gets.chomp

counts = ("a".."c").map { |c| s.count(c) }
n = (s.length - 1) / 3

if counts.all? { |c| [n, n + 1].include?(c) }
  puts "YES"
else
  puts "NO"
end
