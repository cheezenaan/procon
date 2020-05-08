s = gets.chomp
n = s.length
as = Array.new(n+1, 0)

n.times do |i|
  as[i + 1] = as[i] + 1 if s[i] == "<"
end

(n - 1).downto(0) do |i|
  as[i] = as[i + 1] + 1 if s[i] == ">" && as[i] <= as[i + 1]
end

puts as.inject(:+)
