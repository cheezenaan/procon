n, a, b, c, d = gets.split.map(&:to_i)
ss = gets.chomp

ac = ss[a - 1..c]
bd = ss[b - 1..d]

valid = true
if c < d
  valid = false if ac.include?("##") || bd.include?("##")
elsif c > d
  valid = false if !ss[b - 2..d].include?("...")
end

puts valid ? "Yes" : "No"
