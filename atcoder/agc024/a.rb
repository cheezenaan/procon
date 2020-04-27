a, b, c, k = gets.split.map(&:to_i)

MAX = 10 ** 18

if (a - b).abs > MAX
  puts "Unfair"
else
  puts (a - b) * (-1) ** k
end
